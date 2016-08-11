class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, presence: true, uniqueness: true
  validates :ingredient, presence: true, uniqueness: true
  validates :description, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient
end
