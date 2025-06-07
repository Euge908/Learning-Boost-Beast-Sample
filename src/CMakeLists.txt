set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")



add_executable(${EXECUTABLE_NAME} "main.cpp")


find_package(Boost REQUIRED)
target_link_libraries(${EXECUTABLE_NAME} Boost::boost)