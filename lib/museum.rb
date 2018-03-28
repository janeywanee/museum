class Museum
  attr_reader :name, :exhibit

  def initialize(name)
    @name = name
    @exhibit = []
    @cost = 0
  end

  def add_exhibit(exhibit)
    @exhibit << exhibit
  end

  def cost(money)
    @cost += money

  end

end
