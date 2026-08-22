cmake_minimum_required(VERSION 3.14)
project(my_gameboy C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

find_package(SDL3 REQUIRED CONFIG)
find_package(SDL3_ttf REQUIRED CONFIG)

file(GLOB_RECURSE LIB_SOURCES ${CMAKE_SOURCE_DIR}/lib/*.c)

add_executable(${PROJECT_NAME} ${LIB_SOURCES} ${CMAKE_SOURCE_DIR}/src/main.c)

target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/include)
target_link_libraries(${PROJECT_NAME} PRIVATE SDL3::SDL3 SDL3_ttf::SDL3_ttf)
