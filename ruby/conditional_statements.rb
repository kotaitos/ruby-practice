# 条件分岐の利用例をコードする

# if文
number = 10
if number > 5
  puts "numberは5より大きい"
end

# if文の省略形
number = 10
puts "numberは5より大きい" if number > 5

# unless文
number = 10
unless number > 5
  puts "numberは5より大きくない"
end

# unless文の省略形
number = 10
puts "numberは5より大きくない" unless number > 5

# case文
number = 10
case number
when 0
  puts "numberは0です"
when 5
  puts "numberは5です"
when 10
  puts "numberは10です"
end

# 真偽値について
# Rubyでは、trueとfalseの2つの値を持つ真偽値がある
# また、nilも偽として扱われる
# 条件の結果が真の場合はtrue、偽の場合はfalseが返される
