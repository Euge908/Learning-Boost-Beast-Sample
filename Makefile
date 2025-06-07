debug: 
	mkdir -p build/debug && cd build/debug &&\
 	cmake -DCMAKE_RUNTIME_OUTPUT_DIRECTORY="bababa" -S ../.. -B .  &&\
	cmake --build .


clean:
	rm -rf build/*