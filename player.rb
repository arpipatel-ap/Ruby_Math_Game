class Player
  attr_reader :name, :score, :lives

  def initialize(name, score = 0, lives = 3)
    @name = name
    @score = score
    @lives = lives
  end

  def lose_life
    @lives -= 1
  end

  def increase_score(points)
    @score += points
  end
end
