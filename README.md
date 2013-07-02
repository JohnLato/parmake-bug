parmake-bug
===========

small test case for parmake bug

first, install the following two packages:

```
word24-1.0.2
word24-1.0.3
```

Then execute
```
$ ./runBuilds.sh
```

```
# file runBuilds.sh
ghc-parmake -package word24-1.0.2 B.hs -v
sleep 1
touch B.hs
ghc-parmake -package word24-1.0.3 B.hs -v
```

On the second build, ghc-parmake doesn't notice that A.hs needs to be
recompiled due to the changed version, and hence fails due to the version
mismatch when recompiling B.hs.

It is possible to change the code so that the recompilation of B succeeds, in
which case we see the following compilation steps

```
[2 of 2] Compiling B                ( B.hs, B.o )
[1 of 2] Compiling A                ( A.hs, A.o ) [Data.Word.Word24 changed]
[2 of 2] Compiling B                ( B.hs, B.o ) [A changed]
```
