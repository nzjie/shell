#!/bin/bash
#
#  version  v1
#  author niezhenjie


#判断字符串是否为空,注意，在shell中，0标识true,1标识false
strIsEmpty(){
	if [ -z "$1" ];then
		return 0
	else
		return 1
	fi
}

strIsNotEmpty(){
	if [ -n "$1" ];then
		return 0
	else 
		return 1
	fi
}

#判断文件夹是否为空
dirEmpty() {
    if strIsEmpty $1; then
        return 0
    fi
    if [ "$(ls -A $1)" ];then
        return 1
    else
        return 0
    fi
}
