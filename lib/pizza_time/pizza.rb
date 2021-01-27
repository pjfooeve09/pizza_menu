class PizzaTime::Pizza
  attr_accessor :name, :description, :price
  @@all = []

  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

end