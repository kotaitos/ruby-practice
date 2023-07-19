# Dirクラス、Fileクラス: ファイルやディレクトリを扱うクラス

Dir.mkdir("test_dir") unless Dir.exists?("test_dir")

File.open("test_dir/test_file", "w") do |file|
  file.puts("1行目のテキストです。")
  file.puts("2行目のテキストです。")
  file.puts("3行目のテキストです。")
end

content = File.read("test_dir/test_file")
puts content

# CSV
require 'csv'

CSV.open("test_dir/test.csv", "w") do |csv|
  csv << ["Name", "Email", "Age"]
  csv << ["Alice", 25]
  csv << ["Bob", 20]
end

CSV.foreach("test_dir/test.csv") do |row|
  puts "1: #{row[0]}, 2: #{row[1]}, 3: #{row[2]}"
end

# YAML
require 'yaml'

data = {
  "name" => "Alice",
  "age" => 20,
}

File.open("test_dir/test.yml", "w") do |file|
  YAML.dump(data, file)
end

File.open("test_dir/test.yml") do |file|
  puts YAML.load(file)
end

# JSON
require 'json'

user = {
  name: "Alice",
  age: 20,
  friends: ["Bob", "Carol"],
}
File.open("test_dir/test.json", "w") do |file|
  JSON.dump(user, file)
end

File.open("test_dir/test.json") do |file|
  puts JSON.load(file)
end

