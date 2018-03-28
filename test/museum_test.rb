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

  def test_it_has_an_exhibit
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert dmns.add_exhibit("Gems and Minerals")
  end

  def test_each_exhibit_has_a_cost
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls")
    assert_equal 10, dmns.cost(10)
  end



end