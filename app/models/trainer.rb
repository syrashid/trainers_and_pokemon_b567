class Trainer < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :banner_url, presence: true

  has_many :pokemons, dependent: :destroy # <- Prevents orphan records
end
