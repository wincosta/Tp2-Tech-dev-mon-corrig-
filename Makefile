prog: main.o alea.o io.o tri.o
	gcc -o prog main.o alea.o io.o tri.o

main.o: main.c alea.h io.h tri.h tableau.h
	gcc -c -o main.o main.c

alea.o: alea.c alea.h tableau.h
	gcc -c -o alea.o alea.c

io.o: io.c io.h tableau.h
	gcc -c -o io.o io.c

tri.o: tri.c tri.h tableau.h
	gcc -c -o tri.o tri.c

clean:
	rm -rf *.o
