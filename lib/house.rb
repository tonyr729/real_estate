class House
  attr_reader :address

  def initialize(price, address)
    @price = price
    @address = address
  end

  def price
    @price.tr('$', '').to_i
  end
end