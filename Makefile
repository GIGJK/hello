all: compile link clean

compile: hello.s
	@gcc -c hello.s -o hello.o
	@echo "\033[1;33mCompile\033[0m -  \033[0;32msuccess"

link: hello.o
	@ld hello.o -o hello
	@echo "\033[1;33mLink\033[0m - \033[0;32msuccess\033[0;0m"
clean: hello
	@rm -rf *.o
