cmake_minimum_required(VERSION 3.4)
project(seing4python)
add_subdirectory(pybind11)
pybind11_add_module(seing4python seing4python.cpp)
