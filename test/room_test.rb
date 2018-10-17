require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < MiniTest::Test
  def setup
    @room = Room.new(:bedroom)
  end

  def test_it_exists
    assert_instance_of Room, @room
  end

  def test_it_has_a_category
    assert_equal :bedroom, @room.category
  end
end