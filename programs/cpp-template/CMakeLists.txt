cmake_minimum_required(VERSION 3.10)
project(cpp-template)

# Build the mod sandbox program
add_ci_program(cpp-template
	entry.cpp
)

target_compile_features(cpp-template PRIVATE cxx_std_20)
