EXE = printPrimes
src = printPrimes.c
cc = gcc

.PHONY : clean

all :
	$(cc) $(src) -o $(EXE) -lm
	chmod +x $(EXE).bash

bash : printPrimes.bash
	chmod +x $(EXE).bash

c : printPrimes.c
	$(cc) $(src) -o $(EXE) -lm

clean :
	@rm -f $(EXE)
	@chmod -x $(EXE).bash
