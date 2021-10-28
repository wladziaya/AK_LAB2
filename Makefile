# Makefile for World project
binary: main.o libCalculator.a
	g++ -o binary main.o -L. -lCalculator
main.o: main.cpp
	g++ -c main.cpp
libCalculator.a: calculator.o 
	ar cr libCalculator.a calculator.o
calculator.o: calculator.cpp
	g++ -c calculator.cpp
clean:
	rm -f *.o *.a binary
cmake_minimum_required(VERSION 3.20)
project(cpp)

set(CMAKE_CXX_STANDARD 14)

add_executable(cpp calculator.cpp calculator.h main.cpp)
