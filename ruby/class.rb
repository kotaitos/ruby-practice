# アクセサメソッド: インスタンス変数の値を取得・設定するメソッド

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end
end

person = Person.new('Alice', 20)

puts person.name
person.name = 'Bob'
puts person.name


# アクセス修飾子: メソッドや属性の可視性を制御する

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name, @age = name, age
  end

  def display_age
    puts "年齢は#{@age}です"
  end

  private

  def secret_method
    puts '秘密のメソッドです'
  end
end

person = Person.new('Alice', 20)
person.display_age
person.secret_method # エラーが発生する
