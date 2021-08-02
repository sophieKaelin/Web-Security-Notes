#! /bin/bash

# while getopts ":a:h" opt; do
#   case $opt in
#     a)
#       echo "Converting all files in $OPTARG to Markdown" >&2
#       files=${OPTARG}/*
#       echo "$files"
#       ;;
#     h)
#       echo "Options:
#         -a=<file-path>  File path of folder containing documents you wish to convert into markdown"
#       exit 1
#       ;;
#     \?)
#       echo "Invalid option: -$OPTARG" >&2
#       exit 1
#       ;;
#     :)
#       echo "Option -$OPTARG requires an argument." >&2
#       exit 1
#       ;;
#   esac
for f in MD/*
  do echo "Converting $f file..."
  mv $f "${f%.*}.md"
  done 
