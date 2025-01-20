#!/bin/bash

START=2
END=166

for ((i=START; i<=END; i++)); do
  echo "Created folder: $i"
  mkdir "$i"
  cp index.md "${i}/index.md"
done

echo "Folder creation complete."
