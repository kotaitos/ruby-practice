# 数値の絶対値を取得する
number = 5
puts number.abs

# 数値の切り上げを行う
number = 5.5
puts number.ceil

# 数値の切り捨てを行う
number = 5.5
puts number.floor

# 数値を四捨五入する
number = 5.5
puts number.round

# 数値を指定した桁数で四捨五入する
number = 5.555
puts number.round(2)

# 数値を整数に変換する
number = 5.555
puts number.to_i

# 数値を浮動小数点数に変換する
number = 5
puts number.to_f

# 数値を有利数に変換する
number = 5
puts number.to_r

# 数値を複素数に変換する
number = 5
puts number.to_c

# 数値を文字列に変換する
number = 5
puts number.to_s

# 数値を指定した基数の文字列に変換する
number = 5
puts number.to_s(2)

# 数値を指定した桁数の文字列に変換する
number = 5
puts number.to_s(2).rjust(8, '0')
