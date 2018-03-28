class Museum
  attr_reader :name, :exhibit

  def initialize(name)
    @name = name
    @exhibit = []
    @amount = 0
  end

  def add_exhibit(exhibit, cost)
    @exhibit << exhibit
    @amount += cost
  end
end
