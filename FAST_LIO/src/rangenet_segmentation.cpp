#include "rangenet_segmentation.hpp"

RangeNetSegmentation::RangeNetSegmentation(){
  std::filesystem::path file_path(__FILE__);
  std::string model_dir = std::string(file_path.parent_path().parent_path() / "model/");
  ROS_INFO("model_dir: %s", model_dir.c_str());

  net_ = std::unique_ptr<rangenet::segmentation::Net>(new rangenet::segmentation::NetTensorRT(model_dir, false));
}

boost::optional<pcl::PointCloud<pcl::PointXYZRGB>::Ptr>
RangeNetSegmentation::DoInference(const pcl::PointCloud<pcl::PointXYZI>::Ptr& input_pc, const std_msgs::Header& header) {
    if (!input_pc || input_pc->empty()) {
        ROS_WARN("Input point cloud is null or empty");
        return boost::none;
    }

    try {
        // Create labels array with proper size
        const size_t num_points = input_pc->size();
        auto labels = std::make_unique<int[]>(num_points);
        
        // Do inference
        if (!net_) {
            ROS_ERROR("Neural network not initialized");
            return boost::none;
        }
        net_->doInfer(*input_pc, labels.get());

        // Create colored point cloud
        pcl::PointCloud<pcl::PointXYZRGB>::Ptr color_pc(new pcl::PointCloud<pcl::PointXYZRGB>);
        
        // Get pointer to TensorRT network
        auto* net_tensorrt = dynamic_cast<rangenet::segmentation::NetTensorRT*>(net_.get());
        if (!net_tensorrt) {
            ROS_ERROR("Failed to cast to NetTensorRT");
            return boost::none;
        }

        // Paint point cloud
        net_tensorrt->paintPointCloud(*input_pc, *color_pc, labels.get());

        return color_pc;

    } catch (const std::exception& e) {
        ROS_ERROR_STREAM("Exception in DoInference: " << e.what());
        return boost::none;
    }
}