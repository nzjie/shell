#! /bin/bash
fnConsole(){
	echo 'hello world'
}
#没有重载，后面的会覆盖前面的方法
#当参数超过或等于10个，不能使用$n访问，需要使用${n}访问
fnConsole(){
	echo $1
}

fnConsole
fnConsole 'haha'

add(){
	return $(($1+$2))
}
mutil(){
	return $(($1 * $2))
}
add 1 2
#echo 'line' 这里不能有任何语句，否则下面的$?无效
echo "add result is $? "

mutil 5 6
ret=$?
echo -e  "计算结果是\n" #换行需要使用转移字符，使用转移字符需要使用参数-e
echo "$ret"

