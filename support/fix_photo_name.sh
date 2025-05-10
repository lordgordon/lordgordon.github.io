#!/bin/bash
#
# INSTRUCTIONS:
# - run from the repo's root:
#     ./support/fix_photo_name.sh
#

set -e

find . -type f -iname '*.jpeg' -print0 | \
while IFS= read -r -d '' src; do
  dir=$(dirname "${src}")
  target="${dir}/0.jpg"
  echo "found '${src}' -> '${target}'"
  
  mv "${src}" "${target}"
done

echo "Completed."
