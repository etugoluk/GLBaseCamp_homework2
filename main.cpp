#include "calculator.h"
#include <iostream>

int main()
{
	std::cout << "SUM: " << Calculator::Add(5, 3) << std::endl;
	std::cout << "SUB: " << Calculator::Sub(5, 3) << std::endl;
	return 0;
}