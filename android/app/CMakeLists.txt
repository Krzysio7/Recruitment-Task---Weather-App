cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(structs_library VERSION 1.0.0 LANGUAGES C)
add_library(native_storage SHARED ../../ios/Classes/native_storage.c ../../ios/Classes/native_storage.def)
add_executable(native_storage_test ../../ios/Classes/native_storage.c main.c)
