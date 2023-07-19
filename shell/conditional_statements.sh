#!/bin/bash
# 条件分岐を利用したコードを記述する

echo "数値を入力してください（Ctrl+Dで終了）:"

read NUMBER

REMEINDER=$(($NUMBER % 2))

if [ $REMEINDER -eq 0 ]; then
  echo "even"
elif [ $REMEINDER -eq 1 ]; then
  echo "odd"
else
  echo "error"
fi
