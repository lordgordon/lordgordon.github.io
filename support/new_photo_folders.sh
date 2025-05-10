#!/bin/bash
#
# INSTRUCTIONS:
# - set proper START and END
# - run from the repo's root:
#     ./support/new_photo_folders.sh
#

START=203
END=225

for ((i=START; i<=END; i++)); do
  echo "Created folder: ${i}"
  folder="./content/photos/${i}"
  mkdir "${folder}"
  cp "./support/photo_folder_example/index.md" "${folder}/index.md"
done

echo "Folder creation complete."
