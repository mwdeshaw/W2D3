class Card
  def initialize(num, suit)
    @num = num
    @suit = suit
  end
  
  def inspect
    "#{@num} of #{@suit}"
  end

end