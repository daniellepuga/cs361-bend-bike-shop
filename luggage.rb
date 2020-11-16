class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(initial_capacity, items, bike)
    @capacity = initial_capacity
    @items = items
    @bike = Bike.new(id, color, price, extra_items)
  end

  def add(item)
    self.items << item
  end

  def weight_times_ten
    self.items.size * 10
  end

end
