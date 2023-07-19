# 例外処理: プログラム中で発生したエラーをキャッチし、適切に処理すること

def devide(a, b)
  begin
    a / b
  rescue ZeroDivisionError => e
    puts "Error: Division by zero is not allowed."
    puts "Exception message: #{e.message}"
  rescue TypeError => e
    puts "Error: You must pass numbers as arguments."
    puts "Exception message: #{e.message}"
  rescue => e
    puts "Error: Unknown error."
  end
end

puts devide(10, 2)
puts devide(10, 0)
puts devide(10, "a")
