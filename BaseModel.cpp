#include "BaseModel.h"

"""Test BaseModel"""

int main() {
	const std::string MODEL_DIR = "E:\\Jupyter\\RCAN\\RCAN.pt";
	BaseModel model(MODEL_DIR);

	at::Tensor input = torch::ones({ 1, 3, 256, 256 });
	at::Tensor output = model.forward(input);
	std::cout << output.sizes();
	/*torch::jit::script::Module model;
	model = torch::jit::load(MODEL_DIR);

	std::vector<torch::jit::IValue> inputs;
	inputs.push_back(torch::ones({ 1, 3, 128, 256 }));

	at::Tensor output = model.forward(inputs).toTensor();*/

	return 0;
}
