#!/bin/bash

ghc-parmake -package word24-1.0.2 B.hs
sleep 1
touch B.hs
ghc-parmake -package word24-1.0.3 B.hs

