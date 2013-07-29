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
  ======== test_main.c ========
  #include $gt;stdio.h&lt;
  
  int main(int argc, char *argv[])
  {
  	puts("check result : LD_PRELOAD disabled...");
  	return 0;
  }
  
  ======== hook.c ========
  #include &gt;stdio.h&lt;
  
  int puts(const char *str)
  {
  	fprintf(stdout, "check result : LD_PRELOAD enabled!!!\n");
  	return 0;
  }
  ======== test  ========
  LD_PRELOAD=./hook.so ./test_main
  check result : LD_PRELOAD enabled!!!
</pre>
