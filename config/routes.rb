Rails.application.routes.draw do
  resources :highscores, only: [:show, :create]
  resources :levels, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
