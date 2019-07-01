#!/bin/bash
dir="files"
#swaper function with a for swapping contents between two files
swaper(){
touch text.txt
mv "$1" "text.txt"
mv "$2" "$dir/file1.txt"
mv "text.txt" "$dir/file2.txt"
}

if [ -f "${dir}/file1.txt" ] && [ -f "${dir}/file2.txt" ]

then

swaper "$dir/file1.txt" "$dir/file2.txt"
echo "initial file 1 contents"
cat "$dir/file1.txt"
echo "initial file 2 contents"
cat "$dir/file2.txt"

echo "================= current file one contents======"
cat "$dir/file1.txt"
echo "================= current file two contents======"
cat "$dir/file2.txt"
else
echo "File could not be found";
fi

