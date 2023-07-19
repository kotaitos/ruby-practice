# 正規表現とは、テキスト内の文字列を検索したり、置換したりするためのパターンを定義するためのもの
# Regexpクラスは、正規表現を扱うためのクラス

# 数字にマッチする正規表現
regexp = /[0-9]/
string = '2023年5月18日'

# マッチした部分を置換する
replaced_string = string.gsub(regexp, '*')
puts replaced_string

# マッチした部分で文字列を分割する
regexp = /[一-龠々]/
numbers = string.split(regexp)
puts numbers

# パターンを検索する
match = string.match(regexp)
puts match[0]
