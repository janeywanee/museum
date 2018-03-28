require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require './lib/patron'
require 'pry'

class MuseumTest < Minitest::Test

  def test_it_exists
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_instance_of Museum, dmns
  end

  def test_the_museum_has_a_name
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_equal "Denver Museum of Nature and Science", dmns.name
  end

  def test_it_has_an_exhibit_with_a_cost
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert dmns.add_exhibit("Dead Sea Scrolls", 10)
    assert dmns.add_exhibit("Gems and Minerals", 0)
  end

  def test_it_has_revenue
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_equal 0, dmns.revenue
  end

  def

  end
end




# > dmns.admit(bob)
# > dmns.admit(sally)
# > dmns.revenue
# #=> 40
