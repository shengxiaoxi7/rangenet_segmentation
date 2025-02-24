#pragma once 

#include "netTensorRT.hpp"
#include "pointcloud_io.h"
#include "ros/ros.h"
#include <filesystem>
#include <functional>
#include <pcl_conversions/pcl_conversions.h>
#include <sensor_msgs/PointCloud2.h>

#include <boost/optional.hpp>


class RangeNetSegmentation{
public:
  RangeNetSegmentation();
  
public:
  boost::optional<pcl::PointCloud<pcl::PointXYZRGB>::Ptr> DoInference(const pcl::PointCloud<pcl::PointXYZI>::Ptr& input, const std_msgs::Header& header);

private:
  std::unique_ptr<rangenet::segmentation::Net> net_;

};