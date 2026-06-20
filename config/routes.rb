Rails.application.routes.draw do
  root to: "pokemons#index" # we want the homepage to be the pokedex
  resources :pokemons, only: [:show] do
    resources :pokeballs, only: [:create]
  end

  resources :trainers, only: [:index, :show] # :new
end
