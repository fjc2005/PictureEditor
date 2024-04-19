#pragma once

#include <iostream>
#include <opencv2/opencv.hpp>
#include <torch/script.h>

cv::Mat tensor2Mat(at::Tensor& t);
