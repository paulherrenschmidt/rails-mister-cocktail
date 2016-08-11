class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @dose = Dose.new
  end
end
