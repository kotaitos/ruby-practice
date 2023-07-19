# collectionとは、配列やハッシュのようなデータの集まりのこと

# ArrayとHashの違い
# Arrayは、順番に並んだデータの集まり
array1 = [1, 2, 3]
array2 = [3, 2, 1]
puts array1 == array2

# Hashは、キーと値のペアの集まり
hash1 = { 'Alice': 1, 'Bob': 2, 'Carol': 3 }
hash2 = { 'Carol': 3, 'Bob': 2, 'Alice': 1 }
puts hash1 == hash2
