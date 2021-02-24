Rails.application.routes.draw do
  resources :trainers
  # As a user I can see a trainer's pokemon on their show page
  # As a user I can add a pokemon to a trainer
  # As a user I can delete a pokemon from a trainer
end
