class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = @artist.songs.build
  end

  def create
    @song = Song.new(song_params.merge(artist_id:params[:artist_id]))

    if @song.save
      redirect_to @song.artist, notice: "Song created"
    else
      render :new
    end
  end

  def destroy
    @Artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artists_path(@artist)
  end

  private
  def song_params
    params.require(:song).permit(:track, :lyrics, :album)
  end
end
