class ArtistsController < ApplicationController

  # GET /artists
  # GET /artists.json

  def index
    @artists = Artist.all
  end

  # GET /artists
  # GET /artists.json
  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end
end
