require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < MiniTest::Test
  def setup
    @house = House.new
  end

  def test_it_exists
    assert_instance_of House, @house
  end
end