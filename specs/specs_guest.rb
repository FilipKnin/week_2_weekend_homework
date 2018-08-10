require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test


def setup
  @guest1 = Guest.new("Filip", 250)
end


def test_guest_has_name
  assert_equal("Filip", @guest1.name)
end
end
