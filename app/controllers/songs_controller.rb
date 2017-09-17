class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = @artist.songs.build
  end

  def create
    @song = Song.new(song_params.merge(artist_id:params[:artist_id]))


    respond_to do |format|
      if @song.save
        format.html { redirect_to @song.artist, notice: "Song created" }
        format.json {}
      else
        format.html { render :new }
        format.json {}
      end
    end
  end

  def destroy
  @artist = Artist.find(params[:artist_id])
  @song = @artist.songs.find(params[:id])
  @song.destroy

  # if :format != ".json"
  #   redirect_to artist_path(@artist)
  # end
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
