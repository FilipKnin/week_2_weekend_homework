class Room

  attr_reader(:name, :capacity, :bar, :guests, :songs)

  def initialize(name, capacity, bar)
    @name = name
    @capacity = capacity
    @bar = bar
    @guests = []
    @songs = []
  end
end
