class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, :photo_url, presence: true
  validates :name, uniqueness: true
end
