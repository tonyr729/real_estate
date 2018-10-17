class House
  attr_reader :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.tr('$', '').to_i
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.select do |room|
      room.category == category
    end
  end

  def area
    @rooms.reduce(0) do |total_area, room|
      total_area += room.area
      total_area
    end
  end

  def price_per_square_foot
    (price.to_f / area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end.reverse
  end

  def rooms_by_category
    result = @rooms.reduce({}) do |grouped_rooms, room|
      grouped_rooms[room.category] = [] if not grouped_rooms[room.category]
      grouped_rooms[room.category] << room
      grouped_rooms
    end
  end
end