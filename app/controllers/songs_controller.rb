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
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.find(params[:id])
  @song.destroy

  redirect_to artist_path(@artist)
end


# def destroy
#       @song = songs.destroy(song_params)
#
#       redirect_to artist_path(@artist)notice: "song deleted!"
#     end



  def song_params
    params.require(:song).permit(:track, :lyrics, :album)
  end
end
