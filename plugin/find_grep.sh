#!/bin/sh
if [ $# != 3 ]; then
    #echo "need [name] [path]"; # 没有任何报错 , 防止用户随便按在空白处
    exit 2; 
fi


function findbyname() {
    name=$1
    path=$2
    filetype=$3
    if [ "$filetype" == "__NO_SUFFIX__" ];then
        find $path/ -type f | xargs  grep --color=auto -r $name
    else
        find $path/ -type f -a -name "*.$filetype"  | xargs  grep --color=auto -r $name
    fi
}


name=$1
path_all=$2
FILE_TYPE=$3
# :分割
arr=$(echo $path_all|tr ":" "\n")
for line in $arr; 
do
    findbyname  $name $line $FILE_TYPE
done
