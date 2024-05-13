#define NOMINMAX
#undef min
#undef max
#include "stdafx.h"
#include "BaseModel.h"


BaseModel::BaseModel(std::string dir) {
	this->MODEL_DIR = dir;
	this->load();
}

std::string BaseModel::_MODEL_DIR() {
	return this->MODEL_DIR;
}

void BaseModel::load() {
	this->body = torch::jit::load(this->MODEL_DIR);
}

at::Tensor BaseModel::forward(at::Tensor input) {
	std::vector<torch::jit::IValue> inputs;
	inputs.push_back(input);
	at::Tensor output = this->body.forward(inputs).toTensor();

	return output;
}

at::Tensor BaseModel::forward(std::vector<torch::jit::IValue> inputs) {
	at::Tensor output = this->body.forward(inputs).toTensor();
	return output;
}
