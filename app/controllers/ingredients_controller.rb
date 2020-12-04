class IngredientsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_cooker!


  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredients = current_cooker.ingredients
    @ingredient.cooker = current_cooker
    if @ingredient.save!
      redirect_to _ingredients_path
    else
      render 'ingredients/index'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to cooker_meals_path
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update!(ingredient_params)
    redirect_to cooker_meals_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
