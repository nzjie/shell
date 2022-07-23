#! /bin/bash
. ./commons.sh
v=$1
if strEqual a a;then
	echo '相等'
fi
if strNotEqual a b;then
	echo "不相等"
fi
if strIsEmpty $v ; then
    echo '入参为空'
fi
if strIsNotEmpty $v ; then
    echo '入参不为空'
fi

if dirEmpty "/home/ajie/shell"; then
    echo '空'
else
    echo '不为空'
fi

if isPortUse $v;then
    echo '占用'
fi
