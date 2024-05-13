#pragma once
#define NOMINMAX
#undef min
#undef max
#include <stdafx.h>

class BaseModel {
private:
	torch::jit::script::Module body;
	std::string MODEL_DIR;
    void load();

public:
	BaseModel(std::string);
	std::string _MODEL_DIR();
	at::Tensor forward(at::Tensor);
	at::Tensor forward(std::vector<torch::jit::IValue>);
};
