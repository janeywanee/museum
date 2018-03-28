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
    patron_1 = Patron.new("Bob")
    patron_2 = Patron.new("Sally")
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")
    patron_1.add_interest("Imax")

    patron_2.add_interest("Dead Sea Scrolls")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals","Imax"], patron_1.interests
  end



end




# > dmns.revenue
# #=> 0
# > dmns.admit(bob)
# > dmns.admit(sally)
# > dmns.revenue
# #=> 40






# #=> ["Dead Sea Scrolls", "Gems and Minerals"]
