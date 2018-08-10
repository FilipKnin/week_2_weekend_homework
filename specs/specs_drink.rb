require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Mojito", 10)
  end

  def test_drink_has_name
    assert_equal("Mojito", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(10, @drink1.price)
  end

end
