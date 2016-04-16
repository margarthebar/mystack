OBJECTS= main.o draw.o display.o stack.o matrix.o parser.o gmath.o
CFLAGS= -Wall -g
LDFLAGS= -lm
CC= gcc

all: $(OBJECTS)
	$(CC) -o main $(OBJECTS) $(LDFLAGS)

main.o: main.c display.h draw.h stack.h ml6.h matrix.h parser.h
	$(CC) -c main.c

draw.o: draw.c draw.h display.h ml6.h matrix.h gmath.h
	$(CC) $(CFLAGS) -c draw.c

dsiplay.o: display.c display.h ml6.h matrix.h
	$(CC) $(CFLAGS) -c display.c

stack.o: stack.c stack.h
	$(CC) $(FLAGS) -c stack.c

matrix.o: matrix.c matrix.h
	$(CC) $(CFLAGS) -c matrix.c

parser.o: parser.c parser.h matrix.h draw.h display.h ml6.h stack.h
	$(CC) $(CFLAGS) -c parser.c

gmath.o: gmath.c gmath.h matrix.h
	$(CC) $(CFLAGS) -c gmath.c

clean:
	rm *.o *~
