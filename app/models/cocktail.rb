class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  # LISTS = %w(Mint_Julep Whiskey_Sour Mojito)
  validates :name, presence: true, uniqueness: true #inclusion: { in: LISTS }
end
