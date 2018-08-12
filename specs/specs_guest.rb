require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../ccc.rb')
require_relative('../room.rb')

class GuestTest < MiniTest::Test


  def setup
    @guest1 = Guest.new("Filip", 250)
    @guest2 = Guest.new("Michael", 0)
    @Ccc = Ccc.new(15, @room1)
  end


  def test_guest_has_name
    assert_equal("Filip", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(250, @guest1.wallet)
  end

  def test_guest_has_total_spending__initial_value_0
    assert_equal(0, @guest1.total_spending)
  end

  def test_pay_fee
    @guest1.pay_fee(@Ccc)
    assert_equal(235, @guest1.wallet)
    # assert_equal(15, @Ccc.income) #??
  end

  def test_if_guest_have_enough_money__true
    @guest1.has_enough_money(@Ccc)
    assert_equal(true, @guest1.has_enough_money(@Ccc))
  end

  def test_if_guest_have_enough_money__false
    @guest2.has_enough_money(@Ccc)
    assert_equal(false, @guest2.has_enough_money(@Ccc))
  end
end
