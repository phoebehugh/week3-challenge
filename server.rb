require Sinatra/Base

class Test < Sinatra::Base

  GAME = Game.new

  enable :sessions

  get '/' do
    @name = 
  end