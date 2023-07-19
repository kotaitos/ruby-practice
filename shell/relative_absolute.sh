#!/bin/bash

# コマンドライン引数が相対パスか絶対パスか判定する
if [[ "$1" =~ ^/ ]]; then
  echo "absolute path"
else
  echo "relative path"
fi
