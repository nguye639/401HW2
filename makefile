all: process 

main_process.o: main_process.c
	gcc -openmp -c main_process.c -o main_process.o 

png_util.o: png_util.c
	gcc -O3 -l lpng16 -c png_util.c

process: main_process.o png_util.o
	gcc -O3 -o process -lm -l png16 main_process.o png_util.o

test: process 
	./process ./images/cube.png cube_processed.png

clean:
	rm *.o
	rm process 
