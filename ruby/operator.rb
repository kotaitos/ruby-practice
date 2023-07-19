# 代数演算子: 数値を操作するために利用される演算子
# + - * / % **
number1 = 10
number2 = 3
puts number1 + number2
puts number1 - number2
puts number1 * number2
puts number1 / number2
puts number1 % number2
puts number1 ** number2

# 文字列演算子: 文字列を操作するために利用される演算子
# + * length
string1 = "Hello"
string2 = "World"
puts string1 + string2
puts string1 * 3
puts string1.length

# 代入演算子: 代入を行うために利用される演算子
# = += -= *= /= %= **=
number = 10
number += 5
puts number
number -= 5
puts number
number *= 5
puts number
number /= 5
puts number
number %= 5
puts number
number **= 5
puts number

# 比較演算子: 比較を行うために利用される演算子
# == != > < >= <=
number1 = 10
number2 = 3
puts number1 == number2
puts number1 != number2
puts number1 > number2
puts number1 < number2
puts number1 >= number2
puts number1 <= number2

# 論理演算子: 論理演算を行うために利用される演算子
# && || !
condition1 = true
condition2 = false
puts condition1 && condition2
puts condition1 || condition2
puts !condition1
puts !condition2

# 三項演算子: 条件分岐を行うために利用される演算子
# 条件式 ? 式1 : 式2
number1 = 10
number2 = 3
puts number1 > number2 ? "number1はnumber2より大きい" : "number1はnumber2より小さい"

# 演算子の優先順位
# 1.単項演算子
# 2.算術演算子
# 3.比較演算子
# 4.論理演算子
# 5.代入演算子
# 6.三項演算子
# 7.範囲演算子
# 8.その他の演算子
puts 1 + 2 * 3 > 4 && 5 % 6 == 7 || 8 ** 9
