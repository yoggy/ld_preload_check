TARGET=test

test: hook.so test_main
	LD_PRELOAD=./hook.so ./test_main

hook.so: hook.c
	gcc -Wall -fPIC -shared -o hook.so hook.c

test_main: test_main.c
	gcc -Wall -o test_main test_main.c

clean:
	rm -rf test_main hook.so

