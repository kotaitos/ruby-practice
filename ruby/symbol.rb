# Symbolクラス
# シンボルは、文字列と似ているが、オブジェクトIDを持つ。
# シンボルは、文字列と違って、同じ文字列であっても、異なるオブジェクトIDを持つ。
# シンボルは、文字列と違って、変更できない。
# シンボルは、文字列と違って、メモリを節約できる。
# シンボルは、文字列と違って、ハッシュのキーに使える。

# シンボルの生成
# :シンボル名
symbol = :symbol_name
p symbol
p symbol.class

# symbolの比較
# == で比較する
p :symbol_name == :symbol_name

# symbolのハッシュ値の取得
# hashメソッドを使う
hash_value = :symbol_name.hash
p hash_value

# symbolの文字列化
# to_sメソッドを使う
string = :symbol_name.to_s
p string
