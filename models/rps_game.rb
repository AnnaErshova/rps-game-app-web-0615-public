class RPSGame
  attr_accessor :computer_play, :user_play
  USER_CHOICES = [:rock, :paper, :scissors]
  VICTORY_HASH = {:rock => :scissors, :scissors => :paper, :paper => :rock}

  def initialize(user_play)
    @user_play = user_play
    raise PlayTypeError unless self.class.valid_play?(user_play)
  end

  class PlayTypeError < StandardError
  end

  def self.valid_play?(user_play)
    USER_CHOICES.include?(user_play) ? true : false
  end

  def computer_play #rspec tests for computer_play specifically
    USER_CHOICES.sample
  end

  def won?
    VICTORY_HASH[@user_play] == computer_play
  end

  def tied?
    self.user_play == self.computer_play ? true : false
  end

  def lost? # if not won OR tied => lost
    !(won? || tied?) ? true : false
  end

  def outcome
    if won?
      "you won"
    elsif tied?
      "you tied"
    else 
      "you lost"
    end   
  end
end # end class
