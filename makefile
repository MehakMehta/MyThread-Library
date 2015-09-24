all: mythread.a
extra:  mythread_extra.a 

mythread.a: mythread.o common.o
	ar rcs mythread.a mythread.o common.o 
	
mythread.o: mythread.c mythread.h common.c common.h
	gcc -c mythread.c common.c
	
mythread_extra.a: mythreadextra.o common.o
	ar rcs mythreadextra.a mythreadextra.o common.o 
	
mythreadextra.o: mythreadextra.c mythreadextra.h common.c common.h
	gcc -c mythreadextra.c common.c
