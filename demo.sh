#! /bin/bash
. ./commons.sh
v=$1
if strIsEmpty $v ; then
    echo '入参为空'
fi
if strIsNotEmpty $v ; then
    echo '入参不为空'
fi

if dirEmpty "/home/ajie/shell/test"; then
    echo '空'
else
    echo '不为空'
fi

if isPortUse $v;then
    echo '占用'
fi
