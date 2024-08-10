#!/bin/bash

# 读取用户输入
read -p "请输入字符串: " input

# 使用正则表达式检查输入
if [[ "$input" =~ ^[a-z]+$ ]] || \
   [[ "$input" =~ ^[A-Z]+$ ]] || \
   [[ "$input" =~ ^[a-z0-9]+$ ]] && [[ ! "$input" =~ ^[0-9]+$ ]] || \
   [[ "$input" =~ ^[A-Z0-9]+$ ]] && [[ ! "$input" =~ ^[0-9]+$ ]] || \
   [[ "$input" =~ ^[a-zA-Z0-9]+$ ]] && [[ ! "$input" =~ ^[0-9]+$ ]]; then
    echo "输入有效"
else
    echo "输入包含无效字符，请仅输入全小写字母、全大写字母、小写字母加数字、大写字母加数字或大小写字母加数字，且不能为全数字。"
fi


# =====================================================================================================================================


#!/bin/bash

# 读取用户输入
read -p "请输入字符串: " input

# 使用单一的正则表达式进行匹配
if [[ "$input" =~ ^[a-zA-Z0-9]+$ ]] && [[ "$input" =~ [a-zA-Z] ]]; then
    echo "输入有效"
else
    echo "输入包含无效字符，请仅输入全小写字母、全大写字母、小写字母加数字、大写字母加数字或大小写字母加数字，且不能为全数字。"
fi
