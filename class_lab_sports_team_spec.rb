
require('minitest/autorun')
require_relative('./class_lab_sports_team')

require('minitest/rg')

class Test_Class_Lab_Sports < MiniTest::Test

  def test_get_team_name
    scotlandrugby = SportsTeam.new("Scotland", ["Grieg Laidlaw", "Jonny Gray", "Richie Gray", "Stuart Hogg" ], "Vern Cotter")
    assert_equal("Scotland", scotlandrugby.name)
  end

  def test_set_coach
    scotlandrugby = SportsTeam.new("Scotland", ["Grieg Laidlaw", "Jonny Gray", "Richie Gray", "Stuart Hogg" ], "Vern Cotter")
    scotlandrugby.coach= "New Guy"
    assert_equal("New Guy", scotlandrugby.coach)
  end

  def test_add_player
    scotlandrugby = SportsTeam.new("Scotland", ["Grieg Laidlaw", "Jonny Gray", "Richie Gray", "Stuart Hogg" ], "Vern Cotter")
    expected= scotlandrugby.players_arr + ["Scottish Jonah"]
    assert_equal(expected, scotlandrugby.add_player("Scottish Jonah"))
    p scotlandrugby.players_arr
  end

  def test_is_he_in
    scotlandrugby = SportsTeam.new("Scotland", ["Grieg Laidlaw", "Jonny Gray", "Richie Gray", "Stuart Hogg" ], "Vern Cotter")
    expected = true
    assert_equal(expected, scotlandrugby.is_he_in("Stuart Hogg"))
  end

  def test_win_lose_points
    scotlandrugby = SportsTeam.new("Scotland", ["Grieg Laidlaw", "Jonny Gray", "Richie Gray", "Stuart Hogg" ], "Vern Cotter")
    expected = 44
    assert_equal(44, scotlandrugby.win_lose_points("win", 44))
  end














end