class Guest

attr_reader(:name,:wallet, :total_spending )

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @total_spending = 0
  end
end
