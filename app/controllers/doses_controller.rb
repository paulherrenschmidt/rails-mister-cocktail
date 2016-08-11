class DosesController < ApplicationController
  def new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = @ingredient
    @dose.save
    redirect_to cocktail_path(@cocktail)
    redirect_to ingredient_path(@ingredient)
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
