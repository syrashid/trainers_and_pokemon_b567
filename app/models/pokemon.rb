class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :image_url, presence: true

  belongs_to :trainer
  has_many :pokemon_moves, dependent: :destroy
  has_many :moves, through: :pokemon_moves
end
