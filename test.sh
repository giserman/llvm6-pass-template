#!/bin/sh

cd test
../llvm_build/bin/clang -S -emit-llvm test.c
../llvm_build/bin/opt -load=../build/skeleton/SkeletonPass.so --skeleton ./test.ll -S

