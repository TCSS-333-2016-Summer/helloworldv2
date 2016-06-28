CC=gcc
LD=gcc
CFLAGS= -I.

hello : HelloWorld.o myPrint.o
	$(LD) -o hello HelloWorld.o myPrint.o

myPrint.o : myPrint.c
	$(CC) $(CFLAGS) -c myPrint.c

HelloWorld.o : HelloWorld.c
	$(CC) $(CFLAGS) -c HelloWorld.c
clean:
	rm *.o
	rm hello
