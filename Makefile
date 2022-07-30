EXE = printPrimes
SRC = printPrimes.c
CC = gcc
RM = rm -f

.PHONY : clean

all :
	$(CC) $(SRC) -o $(EXE) -lm

clean :
	$(RM) $(EXE)
