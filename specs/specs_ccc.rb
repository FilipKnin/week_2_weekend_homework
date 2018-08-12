require('minitest/autorun')
require('minitest/rg')
require_relative('../ccc.rb')
require_relative('../room.rb')
require_relative('../bar.rb')
require_relative('../drink.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class CccTest < MiniTest::Test

  def setup
    @room1 = Room.new("Rock'n Roll room", 3, @bar )
    @Ccc = Ccc.new(15, @room1)
    @guest1 = Guest.new("Filip", 250)
  end


  def test_Ccc_has_fee
    assert_equal(15, @Ccc.fee)
  end

  def test_Ccc_has_rooms
    assert_equal(@room1, @Ccc.rooms)
  end

  def test_Ccc_has_income__initial_value_0
    assert_equal(0, @Ccc.income)
  end

  def test_Ccc_has_total_income__initial_value_0
    assert_equal(0, @Ccc.total_income)
  end

def test_take_fee
  @Ccc.take_fee()
  assert_equal(15, @Ccc.income)
end

end
