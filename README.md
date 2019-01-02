

# ocaml-scheme
Yet another scheme interpreter in OCaml 

# Fuzz Branch
Fuzzing ocaml-scheme with afl

# How To Start Fuzzing
Make sure afl-fuzz is installed. [More info here.](https://www.cs.cornell.edu/courses/cs3110/2017fa/htmlman/afl-fuzz.html)
Enter the following into console.
```console
user:~/path/ocaml-scheme$: make
user:~/path/ocaml-scheme$: mkdir input
user:~/path/ocaml-scheme$: echo This is a string > input/testcase
user:~/path/ocaml-scheme$: mkdir output
user:~/path/ocaml-scheme$: afl-fuzz -i input -o output ./fuzz.native
```
Edit the fuzz.ml file as you see fit, recompile, run again, enjoy
