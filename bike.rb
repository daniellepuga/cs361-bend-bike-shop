require_relative 'cargo'

class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    self.cargo.add(item)
  end

  def remove_cargo(item)
    self.cargo.remove(item)
  end

  def cargo_capacity
    MAX_CARGO_ITEMS
  end

  def cargo_remaining_capacity
    MAX_CARGO_ITEMS - self.cargo.capacity
  end

end
