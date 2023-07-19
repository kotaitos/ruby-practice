# Arrayクラスのサンプルコード

# Arrayクラスのインスタンスを生成する
array = [1, 2, 3, 4, 5]

# 配列の要素へのアクセス
puts array[0]
puts array[1]

# 配列の要素を変更する
array[0] = 10
puts array[0]

# 配列の要素の追加
array.push(6)
puts array[5]

# 配列の要素の削除
array.delete_at(5)
puts array[5]

# 配列演算子
array1 = [1, 2, 3]
array2 = [4, 5, 6]
puts array1 + array2
puts array1 - array2
puts array1 * 3
puts array1 & array2
puts array1 | array2

# 配列の要素を繰り返し処理する
array.each do |element|
  puts element
end

# 配列の要素をmapメソッドで変換する
new_array = array.map { |element| element * 2 }

# メソッドチェーン
new_array = array.map { |element| element * 2 }.sort
puts new_array

# do...endと{}の違い
# do...endは複数行にまたがる処理を記述する
# {}は1行で完結する処理を記述する
array.each do |element|
  puts element
end

array.each { |element| puts element }
