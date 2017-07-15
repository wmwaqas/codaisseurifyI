json.extract! artist, :id, :name, :songs, :created_at, :updated_at
json.url artists_url(params[:artist_id], artist, format: :json)
