#!/usr/bin/bash


for bin in bin/*; do
  ./target/debug/spirvasm $bin
  if [ $? -ne 0 ]; then
    echo $bin;
  fi
done;