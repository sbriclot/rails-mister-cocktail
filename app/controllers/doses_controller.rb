class DosesController < ApplicationController
  def new
    raise
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @desc = dose_params[:description]
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find_by(name: dose_params[:ingredient])
    @dose = Dose.new(description: @desc, cocktail_id: @cocktail.id, ingredient_id: @ingredient.id)
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(params[:cocktail_id])
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient, :description)
  end
end
