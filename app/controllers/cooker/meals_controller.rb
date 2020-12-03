class Cooker::MealsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_cooker!

  def index
    @meals = current_cooker.meals
    @meal = Meal.new
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to cooker_meals_path
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meals = current_cooker.meals
    @meal.cooker = current_cooker
    if @meal.save!
      redirect_to cooker_meals_path
    else
      render 'cooker/meals/index'
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update!(meal_params)
    redirect_to cooker_meals_path
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :stock, :typology, :price, :photo)
  end
end
