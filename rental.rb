class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = Bike.new(id, color, price, extra_items)
  end

  def price
    self.price + self.luggage.items.count * 10
  end

  def total_weight
    self.weight + self.luggage.items.count
  end

end
