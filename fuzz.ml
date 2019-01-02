open Type
open Env
open Eval
open Printf

(* This is work in progress. Currently only sends strings to the eval*)

(* This file is for fuzzing ocaml-scheme with afl fuzzer. To fuzz, do the following:

make
mkdir input
echo This is a string  > input/testcase
mkdir output
afl-fuzz -i input -o output ./fuzz.native 

*)

let run_with input =
  Eval.init_env();
  let instr = input_line input in
  let str = "\"" ^ instr ^ "\"" in
  let e = Parser.expr Lexer.token (Lexing.from_string str) in
  Type.show (eval e Env.global_env)
  
let start_fuzzing() =
  run_with stdin;;

start_fuzzing()
