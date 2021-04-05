#!/bin/env	 bash
echo "Hellp World !"
# 注释 变量 禁止使用$命名
# 规则:首个字符不能是数字  不能用标点符号 不能是关键字
your_name="runoob.com"
echo $your_name
echo ${your_name}

for skill in Ada Coffe Action Java; do
	echo "I am goog at ${skill} Script"
done
your_name="tom"
echo $your_name
your_name="alibaba"
echo $your_name

# 只读变量 
myUrl="https://www.google.com"
readonly myUrl
echo $myUrl
# shell中存在三种变量 : 1. 局部变量 2. 环境变量 3. shell变量
# 局部变量: 仅当shell实例中有效,其它shell启动的程序不能访问局部变量
# 环境变量: 所有程序,包括shell启动的程序,都能访问环境变量,有些程序需要环境变量来保证正常运行

# shell 字符串'单引号原样输出,变量无效'  
str='this is a string'
your_name='runoob'
str="Hello,I know you are \"$your_name\"!\n"
echo -e $str

# 使用双引号拼接
greeting="Hello,"$your_name" !"
greeting_1="Hello,${your_name} !"
echo $greeting $greeting_1
# 使用单引号拼接
greeting_2='Hello,'$your_name' !'
greeting_3='Hello,${your_name} !'
echo $greeting_2 $greeting_3

string="abcd"
echo ${#string} #输出4字符串长度
string="runoob is a great site"
echo ${string:1:4} #输出 unoo第一个字符的索引值为0
# 查找字符串i或o的位置(哪个字母先出现就计算哪个):
echo `expr index "$string" ib` # 输出4

# 定义数组 不支持多维数组 没有限定数组的大小
# 类似于C语言,数组元素的下标从0开始编号.获取数组中的元素要利用下标,下标可以是整数或者算数表达式,其值应大于或等于0
# array_name=(value0 value1 value2 value3)
# 使用@符号可以获取数组中的所有元素
array_name=(0 1 2 3)
# echo $(array_name[@])


# 多行注释
:<<EOF
注释内容.....
注释内容.....
注释内容.....
EOF
echo "注释多行    tian"

# Shell传递参数
:<<!
$# 传递到脚本的参数个数
$* 以一个单字符串显示所有向脚本传递的参数  如"$*" 用"括起来的情况,以"$1 $2 $3 $4"的形式输出所有参数
$$ 脚本运行的当前进程ID号
$! 后台运行的做后一个进程的ID号
$@ 与$*相同,使用时加引号,并在引号中返回每个参数 如"$@" 用"括起来的情况,以"$1 $2 $3 $4"的形式输出所有参数
$- 显示shell使用的当前选项,与set命令功能相同
$? 显示最后命令的退出状态.0表示没有错误,其他任何值表明有错误
!
