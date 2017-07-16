json.extract! song, :id, :name, :artist, :created_at, :updated_at
json.url artists_songs_url(params[:song_id], song, format: :json)
