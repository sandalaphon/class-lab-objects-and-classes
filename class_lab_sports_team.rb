class SportsTeam
  attr_accessor :coach
  attr_reader :name, :players_arr
  def initialize(name, players_arr, coach)
    @name = name
    @players_arr= players_arr
    @coach = coach
    @points = 0
  end

  def add_player(name)
    @players_arr = @players_arr + [name]
  end

  def is_he_in(name)
    @players_arr.include? name 
  end

  def win_lose_points(w_l_string, score)
    w_l_string=="win" ? @points+=score : 0
  end


















end