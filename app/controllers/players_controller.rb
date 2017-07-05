class PlayersController < ApplicationController
    def index
        @players = Player.all
    end
    
    def new
    end

    def show
        @player = Player.find(params[:id])
    end

    def create
        @player = Player.new(params.require(:player).permit(:name, :avg, :hr, :rbi, :runs, :sb, :ops))
 
        @player.save
        redirect_to @player
    end
end
