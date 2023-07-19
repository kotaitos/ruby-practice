# Rangeオブジェクト: 数値などの範囲を表すオブジェクト

# １から５までの範囲を表すRangeオブジェクトを作成する
range = 1..5
p range.include?(0) # false

# 1から5までの数字を出力する
for i in 1..5
  p i
end
