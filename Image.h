#pragma once
#define NOMINMAX
#undef min
#undef max
#include <stdafx.h>

class	 Image {
private:
	std::string image_dir;

public:
	Image();
	Image(std::string);

	at::Tensor feature;
	cv::Mat feature_mat;

	std::string _image_dir();
    void load();
    void load(std::string);
	void ToTensor();
	void load_mat();
	void imshow(std::string);
	void save(std::string);
	void resize(int, int);
};
