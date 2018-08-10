require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Angie")
  end


  def test_song_has_name
    assert_equal("Angie", @song1.name)
  end
end
