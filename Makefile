conan: 
	conan install . --output-folder=build/libs --build=missing -s build_type=Debug
	conan install . --output-folder=build/libs --build=missing -s build_type=Release


generate_compile_commands: conan
	mkdir -p build/debug && cd build/debug &&\
 	cmake -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="bin" -DCMAKE_TOOLCHAIN_FILE=../libs/build/Debug/generators/conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Debug -S ../.. -B . 

debug: generate_compile_commands
	cd build/debug && cmake --build . &&\
	cd ../..

clean, cleanall:
	rm -rf build/*