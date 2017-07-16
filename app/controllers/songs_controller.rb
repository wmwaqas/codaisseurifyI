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
      respond_to do |format|
        format.html { redirect_to artist_path(params[:artist_id]) }
        format.js
      end
    else
       format.html { render :new }
       format.js
    end
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @song = Song.find(params[:id])
  end

  def update
      artist = Artist.find(params[:artist_id])
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
    respond_to do |format|
      format.html { redirect_to artist_path(@song.artist_id) }
      format.js
    end
  end

  private
    def song_params
      params.require(:song).permit(:name, :album, :year, :rating)
    end
end
