# Rubyには、組み込みメソッドとユーザ定義メソッドがある。
# 組み込みメソッドは、Rubyの標準機能として用意されているメソッド。
# ユーザ定義メソッドは、ユーザが自由に定義できるメソッド。
# どちらも、メソッド名を指定して呼び出すことができる。
# また、メソッド名は、アルファベットの小文字もしくはアンダースコアで始める必要がある。
# ただし、アンダースコアで始まるメソッド名は、通常は使わない。
# また、メソッド名の後には、引数を指定することができる。
# 引数は、メソッドの処理に必要な情報を渡すためのもの。
# 引数は、メソッド名の後にカッコで囲んで指定する。
# 引数が複数ある場合は、カンマで区切って指定する。
# 引数がない場合は、カッコを省略することができる。

# 組み込みメソッドの例
puts "Hello, world!"

# ユーザ定義メソッドの例
def hello
  puts "Hello, world!"
end

hello

# 引数を指定する場合
def hello(name)
  puts "Hello, #{name}!"
end

hello("Ruby")

# 真偽値を返すメソッドの例
def odd?(n)
  case
  when n % 2 == 1
    true
  when n % 2 == 0
    false
  end
end

puts odd?(1)

# デフォルト値を指定する場合
def hello(name = "Ruby")
  puts "Hello, #{name}!"
end

hello
hello("Newbie")

# キーワード引数を指定する場合
def hello(name: "Ruby")
  puts "Hello, #{name}!"
end

hello(name: "Newbie")

# 破壊的メソッドの例
a = "Hello"
puts a.upcase
puts a

# 参照渡しの例
def reverse_upcase!(s)
  s.reverse!.upcase!
end

s = "Hello"
puts reverse_upcase!(s)
puts s

# 値渡しの例
def reverse_upcase(s)
  s.reverse.upcase
end

s = "Hello"
puts reverse_upcase(s)
puts s
