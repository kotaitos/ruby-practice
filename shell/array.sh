#!/bin/bash

# 配列を宣言する
fruits=("apple" "banana" "orange")
numbers=(1 2 3 4 5 6 7 8 9 10)

# 配列の要素を要素を追加する
fruits+=("grape")
numbers+=(11)

# 配列の要素を削除する
unset fruits[2]
unset numbers[9]

# 配列の要素数を取得する
echo ${#fruits[@]}
echo ${#numbers[@]}

# 配列の要素を取得する
echo "fruits[0]: ${fruits[0]}"
echo "numbers[0]: ${numbers[0]}"

# 配列の要素を全て取得する
echo "fruits: ${fruits[@]}"
echo "numbers: ${numbers[@]}"

# 配列のループ処理
for fruit in ${fruits[@]}; do
  echo $fruit
done

for number in ${numbers[@]}; do
  echo $number
done

# 配列の要素を検索する
if [[ " ${fruits[@]} " =~ " banana " ]]; then
  echo "banana exists in the array"
fi

# 配列のスライス
echo ${fruits[@]:0:2}
echo ${numbers[@]:2}

# 配列の要素をソートする
sorted_fruits=($(for fruit in "${fruits[@]}"; do
  echo $fruit
done | sort))

# 配列の連結
fruits_and_numbers=("${fruits[@]}" "${numbers[@]}")
echo "Connected: ${fruits_and_numbers[@]}"
