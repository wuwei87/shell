   # shell脚本学习
----------
学习并熟练shell的编写
---------
 ### 学习shell变量
	1. 命名规则
	2. 变量名声明方法
	3. 变量使用方法
	4. 变量名输出的方法
	5. 变量名删除
	6. shell的三种变量 局部变量,环境变量,shell变量
---------
### 字符串
	1. 单引号和双引号
	2. 单引号中的变量是无效的,而且在单引号字符串中单引号不能使用转义符 ,成对出现,作为字符串拼接使用
	3. 双引号里可以有变量, 可以出先转义符
	4. 获得字符串的长度 string ="abce";(#string) #输出4
	5. 提取字符串 string+"zhangxiaoyu";echo ${string:1:4} #输出 hang
	6. 查找字符串 echo `expr index "$string" i` #输出7
----------
### :shell数组

