require('minitest/autorun')
require('minitest/rg')
require_relative('../bar.rb')
require_relative('../drink.rb')

class BarTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Mojito", 10)
    @drink2 = Drink.new("Gin", 15)
    @drink3 = Drink.new("Whiskey", 20)
    @bar = Bar.new([@drink1, @drink2, @drink3])
  end

  def test_bar_has_drinks
    assert_equal([@drink1, @drink2, @drink3], @bar.drinks)
  end

  def test_bar_has_income__initial_value_0
    assert_equal(0, @bar.income)
  end

end
