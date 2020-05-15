cmake_minimum_required(VERSION 3.16)
project(SimpleRenderer)

link_libraries(glfw GLEW GL)

set(CMAKE_CXX_STANDARD 14)

add_executable(SimpleRenderer main.cpp)

add_custom_command(TARGET SimpleRenderer PRE_BUILD
        COMMAND ${CMAKE_COMMAND} -E create_symlink
        ${CMAKE_SOURCE_DIR}/res $<TARGET_FILE_DIR:SimpleRenderer>/res)