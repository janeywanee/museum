require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'

class PatronTest < Minitest::Test

  def test_it_exists
    patron = Patron.new("Bob")
    assert_instance_of Patron, patron
  end

  def test_it_has_a_name
    patron = Patron.new("Bob")
    assert_equal "Bob", patron.name
  end

  def test_patron_has_interests
    patron = Patron.new("Bob")
    assert patron.interests
  end

  def test_it_can_have_multiple_interests
    patron = Patron.new("Bob",)
    patron.add_interest("Dead Sea Scrolls")
    patron.add_interest("Gems and Minerals")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], patron.interests
  end

end


# #=> ["Dead Sea Scrolls", "Gems and Minerals"]
