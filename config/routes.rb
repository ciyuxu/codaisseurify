Rails.application.routes.draw do
  root "artists#index"

  resources :artists
  resources :songs
  resources :artists do
    resources :songs
  end
  resources :songs do
    resources :artists
  end
end
