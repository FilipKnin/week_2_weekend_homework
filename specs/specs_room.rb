require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../bar.rb')
require_relative('../drink.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Angie")
    @song2 = Song.new("Wild horses")
    @guest1 = Guest.new("Filip", 250)
    @guest2 = Guest.new("Michael", 300)
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

  def test_room_has_songs_playlist
    assert_equal([], @room1.songs)
  end

  def test_room_has_guests
    assert_equal([], @room1.guests)
  end

  def test_add_song
    @room1.add_song(@song1)
    assert_equal([@song1], @room1.songs)
  end

  def test_add_song__2
    @room1.songs.push(@song2)
    @room1.add_song(@song1)
    assert_equal([@song2, @song1], @room1.songs)
  end

  def test_add_guest
    @room1.guests.push(@guest2)
    @room1.add_guest(@guest1)
    assert_equal([@guest2, @guest1], @room1.guests)
  end

end
