# -*- Makefile -*-

default: sleeping_barber

sleeping_barber: main.o
	gcc -o $@ $^ -lpthread

main.o: main.c
	gcc -c $^ 

clean:
	rm -f *.o
