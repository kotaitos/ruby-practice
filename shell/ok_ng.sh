#!/bin/bash

if [ "$1" == "ok" ]; then
  # 標準出力をファイルにリダイレクトする
  echo "This is ok." > output/ok.txt
elif [ "$1" == "ng" ]; then
  # 標準エラー出力をファイルにリダイレクトする
  ls -l /nonexistent_directory 2> output/ng.txt
else
  echo "Usage: $0 [ok|ng]"
  exit 1
fi
