cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(audioprobe)

# RtAudio.h
include_directories(../rtaudio)

add_executable(audioprobe main.cpp)
target_compile_features(audioprobe PRIVATE cxx_std_17)

target_link_directories(audioprobe PRIVATE $ENV{HOME}/Desktop/Development/rtaudio/build)
target_link_libraries(audioprobe PRIVATE $ENV{HOME}/Desktop/Development/rtaudio/build/librtaudio.dylib)

# set(CMAKE_INSTALL_RPATH "../rtaudio")
# set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
