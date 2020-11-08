class Cargo

  attr_reader :contents

  MAX_ITEMS = 10

  def initialize(contents = [])
    @contents = contents
  end
  
  def add(item)
    self.contents << item
  end

  def remove(item)
    self.contents.remove(item)
  end

  def capacity
    MAX_ITEMS
  end

  def remaining_capacity
    MAX_ITEMS - self.contents.size
  end

end