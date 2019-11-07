sourceCode = eratosthenes_openmp.c

all: multithread_test.o singleThread_test.o multithread_test_print.o singleThread_test_print.o
	echo "done"

# multithread version
multithread_test.o: ${sourceCode}
	gcc -o multithread_test.o ${sourceCode} -lm -fopenmp

# single thread version
singleThread_test.o: ${sourceCode}
	gcc -o singleThread_test.o ${sourceCode} -lm -DSINGLETHREAD

# multithread version with prime number printed on console
multithread_test_print.o: ${sourceCode}
	gcc -o multithread_test_print.o ${sourceCode} -lm -fopenmp -DPRINTPRIME

# single thread version with prime number printed on console
singleThread_test_print.o: ${sourceCode}
	gcc -o singleThread_test_print.o ${sourceCode} -lm -DSINGLETHREAD -DPRINTPRIME