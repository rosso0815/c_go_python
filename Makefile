#
prog: clean cmd01.o lib.o
	@echo "\n==> build together"
	gcc -llib -o cmd01 cmd01.o -L${PWD}
#
lib.o: lib.c
	@echo "\n==> compile shared lib"
	gcc -c -fpic lib.c
	gcc -shared -o liblib.so lib.o
#
cmd01.o: cmd01.c
	@echo "\n==> compile main"
	gcc -c cmd01.c
#
clean:
	@echo "\n==> clean the house <=="
	rm -rf *.o
	rm -rf *.so
	rm -rf cmd01
	go clean
