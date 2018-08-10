require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../bar.rb')
require_relative('../drink.rb')

class RoomTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Mojito", 10)
    @drink2 = Drink.new("Gin", 15)
    @drink3 = Drink.new("Whiskey", 20)
    @bar = Bar.new([@drink1, @drink2, @drink3])
    @room1 = Room.new("Rock'n Roll room", 3, @bar )
  end

  def test_room_has_name
    assert_equal("Rock'n Roll room", @room1.name)
  end

  def test_room_has_capacity
    assert_equal(3, @room1.capacity)
  end

  def test_room_has_bar
    assert_equal(@bar, @room1.bar)
  end

end
