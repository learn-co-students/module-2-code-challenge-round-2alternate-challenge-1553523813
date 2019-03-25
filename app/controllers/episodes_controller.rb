class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end
  def show
    @ep= Episode.find(params[:id])
    
  end
end
