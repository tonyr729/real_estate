require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < MiniTest::Test
  def setup
    @house = House.new("$40000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15) 
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
  end

  def test_it_exists
    assert_instance_of House, @house
  end

  def test_it_has_a_price
    assert_equal 40000, @house.price
  end

  def test_it_has_an_address
    assert_equal "123 sugar lane", @house.address
  end

  def test_it_starts_with_no_rooms
    assert_equal [], @house.rooms
  end

  def test_it_can_add_rooms
    @house.add_room(@room_1)

    assert_equal [@room_1], @house.rooms
  end

  def test_it_can_show_rooms_of_certain_category
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)

    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
    assert_equal [@room_4], @house.rooms_from_category(:basement)
  end

  def test_it_can_show_total_area_of_house
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
    assert_equal 1900, @house.area
  end
end