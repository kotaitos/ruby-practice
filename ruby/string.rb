# 文字列の長さを取得
str = "Hello World!"
puts str.length

# 文字列の一部を取得
str = "Hello World!"
puts str[0..4]

# 文字列の一部を置換
str = "Hello World!"
puts str.gsub("Hello", "Goodbye")

# 文字列の一部を削除
str = "Hello World!"
puts str.delete("Hello")

# 文字列の一部を挿入
str = "Hello World!"
puts str.insert(5, " Goodbye")

# 文字列の一部を大文字に変換
str = "Hello World!"
puts str.upcase

# 文字列の一部を小文字に変換
str = "Hello World!"
puts str.downcase

# 文字列の一部を逆順に変換
str = "Hello World!"
puts str.reverse

# 最初の文字を大文字にして、残りを小文字に変換
str = "Hello World!"
puts str.capitalize

# 文字列が指定された文字列で始まるかどうかを判定
str = "Hello World!"
puts str.start_with?("Hello")

# 文字列が指定された文字列で終わるかどうかを判定
str = "Hello World!"
puts str.end_with?("World!")

# 文字列が指定された文字列を含むかどうかを判定
str = "Hello World!"
puts str.include?("World")

# 文字列を指定された文字で分割する
str = "Hello World!"
puts str.split(" ")

# 文字列を指定された文字で結合する
str_array = ["Hello", "World!"]
puts str_array.join(" ")

# 文字列に別の文字列を連結する
str1 = "Hello "
str2 = "World!"
puts str1 + str2

# 文字列の各文字に対してブロックを繰り返し実行する
str = "Hello World!"
str.each_char do |char|
  puts char
end

# 文字列の各行に対してブロックを繰り返し実行する
str = "Hello\nWorld!"
str.each_line do |line|
  puts line
end

# 文字列を数値に変換する
str = "123"
puts str.to_i

# 文字列を浮動小数点数に変換する
str = "123.45"
puts str.to_f

# 文字列をシンボルに変換する
str = "Hello"
puts str.to_sym
