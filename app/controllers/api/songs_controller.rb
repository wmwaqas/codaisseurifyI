class Api::SongsController < ApplicationController
  before_action :set_artist
  def index
    render status: 200, json: {
      songs: @artist.songs
    }.to_json
  end

  def show
    song = Song.find(params[:id])

    render status: 200, json: {
      song: @artist.songs
    }.to_json
  end

  def create
    song = Song.new(song_params)

    if song.save
      render status: 201, json: {
        message: "Song created",
        song: @artist.songs
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song deleted"
    }.to_json
  end

private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:name, :album, :year, :rating)
  end
end
