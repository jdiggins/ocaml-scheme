

# ocaml-scheme
Yet another scheme interpreter in OCaml 

# Fuzz Branch
Fuzzing ocaml-scheme with afl

# How To Start Fuzzing
Make sure afl-fuzz is installed. [More info here.](https://www.cs.cornell.edu/courses/cs3110/2017fa/htmlman/afl-fuzz.html)
Enter the following into console.
```console
make
mkdir input
echo This is a string > input/testcase
mkdir output
afl-fuzz -i input -o output ./fuzz.native
```
Edit the fuzz.ml file as you see fit, recompile, run again, enjoy
