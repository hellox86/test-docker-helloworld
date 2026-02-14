cmake_minimum_required(VERSION 3.5)
project(hello-world)
set(CMAKE_CXX_STANDARD 11)

file(GLOB SRC ./src/*.cpp)

add_executable(${PROJECT_NAME} ${SRC})