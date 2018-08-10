class Room

  attr_reader(:name, :capacity, :bar, :guests, :songs)

  def initialize(name, capacity, bar)
    @name = name
    @capacity = capacity
    @bar = bar
    @guests = []
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_guest(guest)
    @guests.push(guest)
  end
end
