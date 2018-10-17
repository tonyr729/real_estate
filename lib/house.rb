class House
  def initialize(price)
    @price = price
  end
  def price
    @price.tr('$', '').to_i
  end
end