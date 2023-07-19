# クラス名: キャメルケース
# メソッド名: スネークケース
# インスタンス変数: スネークケース

# Carクラスを定義
class Car
  # インスタンス変数の定義
  attr_accessor :name, :price

  # インスタンス変数の初期化
  def initialize(name, price)
    @name = name
    @price = price
  end

  # インスタンスメソッドの定義
  def introduce
    puts "#{@name}の価格は#{@price}万円です。"
  end
end

# Carクラスのインスタンスを生成
car = Car.new('フェラーリ', 2000)
car.introduce
