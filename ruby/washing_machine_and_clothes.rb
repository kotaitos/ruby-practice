class WashingMachine
  attr_accessor :clothes, :capacity, :timer

  def initialize(capacity = 30)
    @capacity = capacity
    @clothes = []
    @timer = nil
  end

  def add_clothes(laundry)
    if @clothes.length + laundry.length > @capacity
      puts "洗濯機にこれ以上の衣類を追加することはできません。"
    else
      @clothes.concat(laundry)
    end
  end

  def remove_clothes(laundry)
    @clothes.delete(laundry)
  end

  def wash
    if @clothes.empty?
      puts "洗濯する衣類がありません。"
    else
      @clothes.each do |clothes|
        clothes.wash
      end
    end
  end

  def start_timer
    if @timer.nil?
      puts "タイマーがセットされていません。"
    else
      puts "#{@timer}分後に洗濯洗濯を開始します。"
      sleep @timer * 60
      wash
      puts "洗濯が終了しました。"
    end
  end
end

class Clothes
  attr_accessor :name, :dirty

  def initialize(name, dirty = false)
    @name = name
    @dirty = dirty
  end

  def wash
    @dirty = true
  end
end
