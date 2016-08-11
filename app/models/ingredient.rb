class Ingredient < ApplicationRecord
  has_many :doses

  #CATEGORIES = %w(lemon ice_mint leaves)
  validates :name, presence: true, uniqueness: true #inclusion: { in: CATEGORIES }
end
