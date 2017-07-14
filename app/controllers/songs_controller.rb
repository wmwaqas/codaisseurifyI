class SongsController < ApplicationController

  def index
     @songs = Song.all
   end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    #song_params = params.require(:song).permit(:name, :album, :year, :rating)

    @song = Song.new(song_params.merge(artist_id: params[:artist_id]))

    if @song.save
       redirect_to artist_path(params[:artist_id])
    else
       render 'new'
    end
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @song = Song.find(params[:id])
  end

  def update
      @artist = Artist.find(params[:artist_id])
      @song = Song.find(params[:id])

      #song_params = params.require(:song).permit(:name, :album, :year, :rating)

      if @song.update_attributes(song_params)
        redirect_to @song
      else
        render 'edit'
      end
    end

    def destroy
    artist = Artist.find(params[:artist_id])
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to artist_path(@song.artist_id)
  end

  private
    def song_params
      params.require(:song).permit(:name, :album, :year, :rating)
    end
end
