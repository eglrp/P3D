#include <ntk/core.h>
#include <ntk/mesh/pcl_utils.h>
#include <p3d/Camera/niKinect.h>
#include <p3d/Registration/Align.h>
#include <pcl/common/common.h>
#include <pcl/common/distances.h>
#include <pcl/common/eigen.h>
#include <pcl/point_types.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/registration/icp.h>

using namespace ntk;

int main(int argc, char** argv)
{   	 
	std::string primaryConfigFile = std::string(argv[1]);
	std::string secondaryConfigFile = std::string(argv[2]);
	
    OpenniDriver ni_driver;
	niKinect k1(primaryConfigFile, &ni_driver, 0);
	niKinect k2(secondaryConfigFile, &ni_driver, 1);
k1.getCamera()->setHighRgbResolution(false);	
k2.getCamera()->setHighRgbResolution(false);	
k1.connectToCamera();
k2.connectToCamera();
k1.getCamera()->setCalibrationData(*k1.getConfiguration()->getCalibration());
k2.getCamera()->setCalibrationData(*k2.getConfiguration()->getCalibration());
k1.startCamera();
k2.startCamera();
pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloudP (new pcl::PointCloud<pcl::PointXYZRGB>());
pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloudS (new pcl::PointCloud<pcl::PointXYZRGB>());
pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloudF1 (new pcl::PointCloud<pcl::PointXYZRGB>());
pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloudF2 (new pcl::PointCloud<pcl::PointXYZRGB>());
pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloudF (new pcl::PointCloud<pcl::PointXYZRGB>());
pcl::IterativeClosestPoint<pcl::PointXYZRGB, pcl::PointXYZRGB> icp;

//pcl::visualization::CloudViewer viewer("Cloud Viewer");

    RGBDImage image1, image2;

     k1.getCamera()->waitForNextFrame();
     k1.getCamera()->copyImageTo(image1);
    k1.getRGBDProcessor()->processImage(image1);


     k2.getCamera()->waitForNextFrame();
     k2.getCamera()->copyImageTo(image2);
    k2.getRGBDProcessor()->processImage(image2);


		rgbdImageToPointCloudColor(*cloudP, image1);
		rgbdImageToPointCloudColor(*cloudS, image2);

	  // ... and downsampling the point cloud
	  const float voxel_grid_size = 0.005;
	  pcl::VoxelGrid<pcl::PointXYZRGB> vox_grid;
	  vox_grid.setInputCloud (cloudP);
	  vox_grid.setLeafSize (voxel_grid_size, voxel_grid_size, voxel_grid_size);
	  vox_grid.filter (*cloudP);

	  vox_grid.setInputCloud (cloudS);
	  vox_grid.setLeafSize (voxel_grid_size, voxel_grid_size, voxel_grid_size);
	  vox_grid.filter (*cloudS);

	  std::cout << "dwnsampled" << "\n";
	  pcl::io::savePCDFileASCII("test2_1.pcd", *cloudP);
	  pcl::io::savePCDFileASCII ("test2_2.pcd", *cloudS);

	  /*icp.setInputCloud(cloudS);
	  icp.setInputTarget(cloudP);
	  icp.setMaximumIterations (20);
	  icp.setMaxCorrespondenceDistance (0.1);
	  icp.align(*cloudF);
	  std::cout << "has converged:" << icp.hasConverged() << " score: " <<
	  icp.getFitnessScore() << std::endl;
	  std::cout << icp.getFinalTransformation() << std::endl;
    while (true)
    {
      // Wait for a new frame, get a local copy and postprocess it.
      k1.getCamera()->waitForNextFrame();
      k1.getCamera()->copyImageTo(image1);
     k1.getRGBDProcessor()->processImage(image1);


      k2.getCamera()->waitForNextFrame();
      k2.getCamera()->copyImageTo(image2);
     k2.getRGBDProcessor()->processImage(image2);


		rgbdImageToPointCloudColor(*cloudP, image1);
		rgbdImageToPointCloudColor(*cloudS, image2);
	  vox_grid.filter (*cloudP);
	  vox_grid.filter (*cloudS);

	 // pcl::transformPointCloud (*cloudP, *cloudF1, icp.getFinalTransformation());
	  //pcl::transformPointCloud (*cloudS, *cloudF2, icp.getFinalTransformation());
	  //icp.align(*cloudF);
		//*cloudF = *cloudF1 + *cloudS;
		//viewer.showCloud (cloudF, "primary");
	//	viewer.showCloud (cloudS, "secondary");*/
  //  }
}
