class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
    respond_with @episodes
  end
  
  def show
    @episode = Episode.find(params[:id])
    respond_with @episode
  end
end
