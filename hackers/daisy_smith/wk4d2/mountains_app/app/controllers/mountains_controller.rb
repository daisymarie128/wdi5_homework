class MountainsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  end

  def about
  end

  def mountains
    @mountains = Mountain.all
  end

  def new
  end

  def create
    Mountain.create params.require(:mountain).permit(:name, :image, :country, :oceanheight, :ascent)
    redirect_to mountains_path
  end

  def show
    @mountain = Mountain.find params[:id]
  end

  def edit
    @mountain = Mountain.find params[:id]
  end

  def destroy
    mountain = Mountain.find params[:id]
    mountain.destroy
    redirect_to mountains_path
  end

  def update
    mountain = Mountain.find params[:id]
    mountain.update params.require(:mountain).permit(:name, :image, :country, :oceanheight, :ascent )
    redirect_to mountains_path
  end



end