#pragma once

class	 Image {
private:
	std::string image_dir;
	void load();

public:
	Image();
	Image(std::string);

	at::Tensor feature;
	cv::Mat feature_mat;

	std::string _image_dir();
	void ToTensor();
	void load_mat();
	void imshow(std::string);
	void save(std::string);
	void resize(int, int);
};
