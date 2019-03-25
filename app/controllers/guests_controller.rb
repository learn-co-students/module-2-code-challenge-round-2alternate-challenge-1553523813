class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  def show
    @gue= Guest.find(params[:id])
    
  end
end
