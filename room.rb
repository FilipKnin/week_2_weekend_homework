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

  def check_space()
    if @guests.length < capacity
      return true
    else
      return false
    end
  end

  def remove_guest(guest)
    @guests.delete_if {|x| x == guest}
  end


end
