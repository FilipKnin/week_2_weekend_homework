class Guest

attr_reader(:name,:wallet, :total_spending)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @total_spending = 0
  end

  def pay_fee(caraoke_venue)
    @wallet -= caraoke_venue.fee
    caraoke_venue.income += caraoke_venue.fee #why this does not work?
  end
end
