class ArtistsController < ApplicationController


  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @song = @artist.songs
  end

  def destroy
  @artist = Artist.find(params[:id])
  @artist.destroy
  
  redirect_to root_path
  end


end
