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
  end


  def test_ccc_has_fee
    assert_equal(15, @Ccc.fee)
  end
end
