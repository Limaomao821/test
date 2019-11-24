cwd = /home/limaomao/code/test/llvm
source = ${cwd}/toy.cpp
target = toy.o
${target}:${source}
	clang++ -g $$(llvm-config --cxxflags) ${source} -o ${target} $$(llvm-config --ldflags --libs)