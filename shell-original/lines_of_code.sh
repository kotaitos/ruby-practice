#!/bin/bash

# 指定したディレクトリまたはサブディレクトリ内のファイルの総行数を計算する関数
# 引数1: ディレクトリパス

# コマンドライン引数の確認
if [ $# -eq 0 ]; then
  echo "usage:ディレクトリを引数として指定してください。"
  exit 1
fi

# ディレクトリまたはサブディレクトリ内のファイルの総行数を計算する関数
calculate_total_lines_of_code() {
  local total_lines=0

  # ディレクトリ内のすべてのファイルとディレクトリに対して処理を行う
  for item in "$1"/*; do
    if [ -f "$item" ]; then
      line_count=$(wc -l < "$item")
    elif [ -d "$item" ]; then
      # ディレクトリの場合は再帰的に処理
      line_count=$(calculate_total_lines_of_code "$item")
    fi
    total_lines=$((total_lines + line_count))
  done

  echo "$total_lines"
}

# ディレクトリまたはサブディレクトリ内のファイルの総行数を計算
directory="$1"
total_lines=$(calculate_total_lines_of_code "$directory")

# 結果を表示
echo "総行数: $total_lines"
