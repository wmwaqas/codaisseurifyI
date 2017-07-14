Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "artists#index"

  # resources :artists
  # resources :songs

  resources :artists do
    resources :songs
  end

  # get "artists" => "artists#index"
  # get 'artists/new' => "artists#new", as: :new_artist
  # get "artists/:id" => "artists#show", as: :artist
  # get "songs" => "songs#index"
end
