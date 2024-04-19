#include "stdafx.h"


cv::Mat tensor2Mat(at::Tensor& t) {
	at::Tensor tmp = t.clone();
	tmp = tmp.squeeze(0).detach().permute({ 1, 2, 0 });
	tmp = tmp.mul(255).clamp(0, 255).to(torch::kU8);
	tmp = tmp.to(torch::kCPU);
	int h = tmp.size(0);
	int w = tmp.size(1);

	cv::Mat mat(w, h, CV_8UC3);
	std::memcpy((void*)mat.data, tmp.data_ptr(), sizeof(torch::kU8) * tmp.numel());
	return mat.clone();
}