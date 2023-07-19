#!/bin/bash

# コマンドライン引数で整数を取得する
num=$1

# outディレクトリが存在する場合は削除する
if [ -d out ]; then
  rm -rf out/*
else
  # outディレクトリを作成する
  mkdir out
fi

# 渡された引数の回数だけoutディレクトリ以下にディレクトリを作成する
# 生成されたディレクトリに順序分（インデックス分）の数のファイルを生成する
for i in $(seq 1 $num); do
  mkdir out/dir-$i
  for j in $(seq 1 $i); do
    echo "file-$j" > out/dir-$i/file-$j
  done
done
