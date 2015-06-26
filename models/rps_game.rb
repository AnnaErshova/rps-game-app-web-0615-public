class RPSGame

  attr_accessor :user_move
  VALID_MOVES = [:rock, :paper, :scissors]

  def initialize(user_move)
    @user_move = user_move
    raise PlayTypeError unless self.class.valid_play?(user_move)
  end

  # inherits Standard Error properties
  class PlayTypeError < StandardError
  end

  def self.valid_play?(user_move)
    VALID_MOVES.include?(user_move) ? true : false
  end

  def computer_play
    VALID_MOVES.sample
  end

  def won?
   (winningscenario1 || winningscenario2 || winningscenario3) ? true : false
  end

  def tied?
    self.user_move == self.computer_play ? true : false
  end

  def lost?
    # if not won OR tied => lost
    !(won? || tied?)? true : false
  end

  def winningscenario1
    self.user_move == :rock && self.computer_play == :scissors
  end

  def winningscenario2
    self.user_move == :scissors && self.computer_play == :paper
  end

  def winningscenario3
    self.user_move == :paper && self.computer_play == :rock
  end

end # end class