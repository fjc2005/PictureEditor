#include <iostream>
#include <opencv2/opencv.hpp>
#include <torch/script.h>

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
