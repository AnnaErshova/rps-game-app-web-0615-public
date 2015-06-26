require_relative 'config/environment'

class GameApp < Sinatra::Base
  get '/rps/:play' do # get means 'show something'
    @game = RPSGame.new(params[:play].to_sym)
    @play = params[:play]
    @computer_play = @game.computer_play
    erb :rps_game
  end
end