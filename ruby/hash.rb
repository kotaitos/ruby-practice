# Hashクラスのサンプルコード

# ハッシュの生成
hash = {
  "name" => "Taro",
  "age" => 20,
}

# ハッシュの要素を取得
name = hash["name"]
puts name

# ハッシュの要素を変更
hash["name"] = "Jiro"
puts hash

# ハッシュの要素を追加
hash["address"] = "Tokyo"
puts hash

# ハッシュの要素を削除
hash.delete("address")
puts hash

# ハッシュ演算子
hash1 = {
  "name" => "Taro",
  "age" => 20,
}
hash2 = {
  "name" => "Jiro",
  "address" => "Tokyo",
}

puts hash1 == hash2
puts hash1 != hash2

# ハッシュの繰り返し処理
hash = {
  "name" => "Taro",
  "age" => 20,
}

hash.each do |key, value|
  puts "#{key}: #{value}"
end

# ハッシュの要素をmapメソッドで変換
hash = {
  "name" => "Taro",
  "age" => 20,
}

new_hash = hash.map { |key, value| [key, value.to_s] }
puts new_hash

# method chain
new_hash = hash.map { |key,value| [key, value.to_s] }.sort
puts new_hash
