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
	cv::Mat img = this->feature_mat.clone();
	int h = img.rows;
	int w = img.cols;
	int channels = img.channels();

	at::Tensor img_t = torch::from_blob(img.data, { 1, h, w, channels }, at::kByte);
	img_t = img_t.permute({ 0, 3, 1, 2 });
	img_t = img_t.toType(c10::kFloat).div(255.0);
	img_t.to(c10::DeviceType::CPU);

	this->feature = img_t;
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
	cv::resize(this->feature_mat, this->feature_mat, cv::Size(w, h), 0, 0, cv::INTER_AREA);
	this->ToTensor();
}