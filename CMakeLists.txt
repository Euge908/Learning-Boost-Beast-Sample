cmake_minimum_required(VERSION 3.22)

project(SimpleCrudApp VERSION 1.0.0 LANGUAGES C CXX)



set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)  # disables GNU extensions (i.e., uses -std=c++20 instead of -std=gnu++20)


set(EXECUTABLE_NAME simple_crud_app.bin)


add_subdirectory(app) # Contains the main file
add_subdirectory(src) # Contains libs
