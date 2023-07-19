#!/bin/bash
# 繰り返し処理と条件分岐を利用したコードを記述する

echo "数値を入力してください（Ctrl+Dで終了）:"

sum=0

while read num
do
  if [ -z "$num" ]; then
    break
  fi
  sum=$((sum + num))
done

echo "合計値は $sum です。"
