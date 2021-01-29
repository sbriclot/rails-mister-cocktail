# frozen_string_literal: true

# Dose Controller
class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(cocktail_id: @cocktail.id)
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      save_history(@dose, 'add')

      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    save_history(@dose, 'del')
    @dose.destroy

    redirect_to cocktail_path(params[:cocktail_id])
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end

  def save_history(dose, action)
    @history = History.new(
      description: dose.description,
      cocktail_id: dose.cocktail_id,
      ingredient_id: dose.ingredient_id,
      action: action
    )
    @history.save
  end
end
