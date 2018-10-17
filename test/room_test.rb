require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'

class RoomTest < MiniTest::Test
  def setup
    @room = Room.new
  end

  def test_it_exists
    assert_instance_of Room, @room
  end
end