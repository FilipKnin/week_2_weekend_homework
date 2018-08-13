class Guest

attr_reader(:name,:wallet, :total_spending)
attr_writer(:wallet)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @total_spending = 0
    @favourite_song = []
  end

  def pay_fee(caraoke_venue)
    @wallet -= caraoke_venue.fee
    #caraoke_venue.income += caraoke_venue.fee #is that ok?
  end

  def has_enough_money(caraoke_venue)
    if caraoke_venue.fee <= @wallet
      return true
    else
      return false
    end
  end

#   def fav_song(room, song)
#     for song in room.songs
#       if song == @favourite_song
#         return "Whoo!"
#     end
# end
#   end

end
