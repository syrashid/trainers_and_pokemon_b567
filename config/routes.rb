Rails.application.routes.draw do
  resources :trainers do
    resources :pokemons, only: :create
  end
  resources :pokemons, only: :destroy do
    resources :pokemon_moves, only: [ :new, :create ]
  end


  # As a user I can see a trainer's pokemon on their show page x
  # As a user I can add a pokemon to a trainer X
  # As a user I can delete a pokemon from a trainer X
  # As a user I can add moves to a pokemon
end
