class CookersController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @cooker = Cooker.find(params[:id])
    @starters = @cooker.meals.where(typology: "starter")
    @main_courses = @cooker.meals.where(typology: "main_course")
    @desserts = @cooker.meals.where(typology: "dessert")
    @order_item = OrderItem.new
  end

  def edit
    @cooker = Cooker.find(params[:id])
  end

  def update
    @cooker = Cooker.find(params[:id])
    @cooker.update!(cooker_params)
    redirect_to cooker_path(current_cooker)
  end

  private

  def cooker_params
    params.require(:cooker).permit(:address, :username, :photo)
  end
end
