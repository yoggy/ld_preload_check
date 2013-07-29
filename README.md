ld_preload_check
==================
simple LD_PRELOAD check tool.

how to use
==================
<pre>
  $ git clone https://github.com/yoggy/ld_preload_check.git
    (or wget https://github.com/yoggy/ld_preload_check/archive/master.zip)

  $ make
  gcc -Wall -fPIC -shared -o hook.so hook.c
  gcc -Wall -o test_main test_main.c
  LD_PRELOAD=./hook.so ./test_main
  check result : LD_PRELOAD enabled!!!
</pre>
