# オブジェクト指向プログラミング（Object Oriented Programming: OOP）について調べ、コードする
# OOPはプログラミングパラダイムの一つであり、データとそのデータを処理する手段を一つにまとめたもの
# クラスはオブジェクトの設計図のようなものであり、オブジェクトはクラスのインスタンスである

# カプセル化： クラスとオブジェクト
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, I'm #{@name}!"
  end
end

person = Person.new('Alice', 20)

puts person.name
puts person.age

person.greet

# ポリモーフィズム: 継承
class Student < Person
  attr_accessor :student_id

  def initialize(name, age, student_id)
    super(name, age)
    @student_id = student_id
  end

  def study
    puts "I'm studying!"
  end
end

student = Student.new('Bob', 18, '1234567890')

puts student.name
puts student.age
puts student.student_id

student.greet
student.study
