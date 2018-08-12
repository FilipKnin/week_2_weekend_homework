class Ccc

  attr_reader(:fee, :rooms, :income, :total_income)
  attr_reader(:income)

  def initialize(fee, rooms)
    @fee = fee
    @rooms = rooms
    @income = 0
    @total_income = 0 #is that ok? @total_income = @income
  end
end
