class ArtistsController < ApplicationController

  # GET /artists
  # GET /artists.json

  def index
    @artists = Artist.all
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  # DELETE /artist/1
  # DELETE /artists/1.json
  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end
end
