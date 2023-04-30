CC = gcc
FLAGS = -Wall -g 

all: libA libB encode decode copy cmp stshell

copy: copy.c 
	$(CC) $(FLAGS) copy.c -o copy

cmp: cmp.c 
	$(CC) $(FLAGS) cmp.c -o cmp

encode: encode.c
	$(CC) $(FLAGS) encode.c -o encode

decode: decode.c
	$(CC) $(FLAGS) decode.c -o decode

libA: codecA.c
	$(CC) -shared -fPIC codecA.c -o codecA

libB: codecB.c
	$(CC) -shared -fPIC codecB.c -o codecB

stshell: stshell.c 
	$(CC) $(FLAGS) stshell.c -o stshell

.PHONY: clean all

clean:
	-rm -f *.o copy cmp encode decode codecA codecB stshell 

