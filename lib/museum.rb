class Museum
  attr_reader :name, :exhibit, :revenue

  def initialize(name)
    @name = name
    @exhibit = []
    @amount = 0
    @revenue = 0
    @patrons = []

  end

  def add_exhibit(exhibit, cost)
    @exhibit << exhibit
    @amount += cost
  end

  def admit(name)
    @patrons << name
    @@revenue +=
  end
end
