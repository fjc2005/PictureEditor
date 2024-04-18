#include "stdafx.h"
#include "Image.h"


Image::Image() {
	std::cout << "Please add an image file to read: " << std::endl;
	std::string file_path;
	std::cin >> file_path;
	this->image_dir = file_path;
	this->load();
}

Image::Image(std::string dir) {
	this->image_dir = dir;
	this->load();
}

void Image::load() {
	this->load_mat();
	this->ToTensor();
}

std::string Image::_image_dir() {
	return this->image_dir;
}

void Image::ToTensor() {
	cv::Mat img;
	this->feature_mat.copyTo(img);
	// Channel: B, G, R -> R, G, B
	cv::cvtColor(img, img, cv::COLOR_BGR2RGB);

	// Normalize, 0-255 -> 0-1 float
	img.convertTo(img, CV_32FC3, 1.0f / 255.0f);

	// ToTensor
	int img_h = img.rows;
	int img_w = img.cols;
	int channels = img.channels();
	this->feature = torch::from_blob(img.data, { 1, img_h, img_w, channels });

	// Permute, (H, W, C) -> (1, C, H, W)
	this->feature = this->feature.permute({ 0, 3, 1, 2 });
}

void Image::load_mat() {
	this->feature_mat = cv::imread(this->image_dir);
}

void Image::save(std::string save_dir) {
	cv::imwrite(save_dir, this->feature_mat);
}

void Image::imshow(std::string window_name) {
	cv::imshow(window_name, this->feature_mat);
}

void Image::resize(int h, int w) {
	cv::resize(this->feature_mat, this->feature_mat, cv::Size(w, h), 0, 0, cv::INTER_LINEAR);
	this->ToTensor();
}