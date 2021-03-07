all: hello 

hi: hello.o 
	ld hello.o -o hello
  
hi.o: hello.s
	as hello.s -o hello.o
  
clean: 
	rm hello.o hello
