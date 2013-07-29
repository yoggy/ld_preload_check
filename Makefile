TARGET=test

test: hook.so test_main
	@echo "======== test_main.c ========"
	@cat test_main.c
	@echo "======== hook.c ========"
	@cat hook.c
	@echo "======== test  ========"
	LD_PRELOAD=./hook.so ./test_main

hook.so: hook.c
	gcc -Wall -fPIC -shared -o hook.so hook.c

test_main: test_main.c
	gcc -Wall -o test_main test_main.c

clean:
	rm -rf test_main hook.so

