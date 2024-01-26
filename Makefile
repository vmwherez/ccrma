CFLAGS=-Wall -g
.SILENT: fun

all:	clean
	mkdir build
	cd build && cmake .. && make 

clean:
	rm -fr build

run: 
	./build/audioprobe

fun: 
	man make 
	echo ""
