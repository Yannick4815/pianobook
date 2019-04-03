#!/bin/bash

extension="123"
extension=$1
filename=$2
search_dir=$3
counter=0
articulation="p"
artcounter=0
declare -a arr=("C0" "G0" "D1" "A1" "E2" "B2" "F#3" "C#4" "G#4" "D#5" "A#5" "F6")
declare -a art_arr=("p" "f" "RT")



cd $search_dir
files=`ls`
for entry in $search_dir/*.$extension
do
  if [ $counter == 12 ]; then
    counter=0
    artcounter=$((artcounter+1))
  fi

  mv "$entry" "$filename ${art_arr[$artcounter]} ${arr[$counter]}.$extension"
  echo "created: $filename ${art_arr[$artcounter]} ${arr[$counter]}.$extension"
  counter=$((counter+1))


done

echo "Have fun with those samples!"
