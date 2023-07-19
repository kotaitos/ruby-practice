#!/bin/bash
# 繰り返し処理について調べ、使用例をコードする

echo "数値を入力してください（Ctrl+Dで終了）:"
read NUMBER

echo "seq"
seq $NUMBER

echo "for"
sum=0
for ((i=1; i<=NUMBER; i++)); do
  sum=$((sum += i))
done

echo "$sum"
