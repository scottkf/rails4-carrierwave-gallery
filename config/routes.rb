PhotoGallery::Application.routes.draw do

  resources :photos
  resources :albums

  root to: 'albums#index'
end
