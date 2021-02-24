class Trainer < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :banner_url, presence: true
end
