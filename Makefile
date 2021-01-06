#
prog: clean cmd01.o lib.o
	@echo "@@@ build together"
	@gcc -llib -o cmd01 cmd01.o lib.o -L${PWD}
	@ls -ltr
#
lib.o: lib.c
	@echo "@@@ compile shared lib"
	@gcc -c -fpic lib.c
	@gcc -shared -o liblib.so lib.o
	@ls -ltr

cmd01.o: cmd01.c
	@echo "@@@ compile cmd01.c"
	@gcc -c cmd01.c

clean:
	@echo "@@@ clean the house"
	@rm -rf *.o
	@rm -rf *.so
	@rm -rf cmd01