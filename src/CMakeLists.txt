cmake_minimum_required(VERSION 3.4)
project(pyseing)
add_subdirectory(pybind11)
pybind11_add_module(pyseing seing4python.cpp)
