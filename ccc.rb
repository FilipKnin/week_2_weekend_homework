class Ccc

  attr_reader(:fee, :rooms, :income, :total_income)
  attr_writer(:income)

  def initialize(fee, rooms)
    @fee = fee
    @rooms = rooms
    @income = 0
    @total_income = 0 #is that ok? @total_income = @income
  end

  def take_fee(guest, caraoke_venue)
    @income += @fee
     guest.pay_fee(caraoke_venue) #how to make two methods corresponding
  end

  def check_in(guest, room, caraoke_venue)
    if room.check_space == true && guest.has_enough_money(caraoke_venue)
      room.guests.push(guest)
      take_fee(guest, caraoke_venue)
      p "Please, go to #{room.name}!"
    elsif (room.check_space == true && guest.has_enough_money(caraoke_venue) == false) || (room.check_space == false && guest.has_enough_money(caraoke_venue) == false)
      p "Sorry, you have no enough money"
    else p "Sorry, we don't have enough space"
    end
  end
end
