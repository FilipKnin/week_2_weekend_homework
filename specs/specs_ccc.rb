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
    @guest2 = Guest.new("Michael", 0)
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
    @Ccc.take_fee(@guest1, @Ccc)
    assert_equal(15, @Ccc.income)
    assert_equal(235, @guest1.wallet)
  end

  def test_check_in_guest_checked_in
    @Ccc.check_in(@guest1, @room1, @Ccc)
    assert_equal([@guest1], @room1.guests)
    assert_equal(15, @Ccc.income)
    assert_equal(235, @guest1.wallet)
    assert_equal("Please, go to Rock'n Roll room!", @Ccc.check_in(@guest1, @room1, @Ccc))
  end

  def test_check_in_guest_not_checked_in_no_enough_money
    @Ccc.check_in(@guest2, @room1, @Ccc)
    assert_equal([], @room1.guests)
    assert_equal(0, @Ccc.income)
    assert_equal(0, @guest2.wallet)
    assert_equal("Sorry, you have no enough money", @Ccc.check_in(@guest2, @room1, @Ccc))
  end
end
