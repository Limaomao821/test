sourceCode = eratosthenes_openmp.c
multithread_test.o:${sourceCode}
	gcc -o multithread_test.o ${sourceCode} -lm -fopenmp

singleThread_test.o:${sourceCode}
	gcc -o singleThread_test.o ${sourceCode} -lm -DSINGLETHREAD