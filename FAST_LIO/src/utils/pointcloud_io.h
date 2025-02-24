#ifndef RANGENET_LIB_POINTCLOUD_IO_H
#define RANGENET_LIB_POINTCLOUD_IO_H

#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <string>

constexpr static int num_point_dims = 4;

bool readBinFile(const std::string &filename,
                 pcl::PointCloud<pcl::PointXYZI> &pointcloud);

bool readBinFile(const std::string &filename, std::vector<float> &pointcloud);

inline void pcl22DVector(pcl::PointCloud<pcl::PointXYZI> &pointcloud,
                         std::vector<std::vector<float>> &pointcloud_vector);

inline void pcl21DVector(pcl::PointCloud<pcl::PointXYZI> &pointcloud,
                         std::vector<float> &pointcloud_vector);

void pcl21DArray(pcl::PointCloud<pcl::PointXYZI> &pointcloud, float *pointcloud_arr);

#endif // RANGENET_LIB_POINTCLOUD_IO_H
