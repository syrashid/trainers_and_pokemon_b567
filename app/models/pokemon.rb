class Pokemon < ApplicationRecord
  validates :name, presence: true
  validates :image_url, presence: true

  belongs_to :trainer
end
