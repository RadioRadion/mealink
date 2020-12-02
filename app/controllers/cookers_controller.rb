class CookersController < ApplicationController
  def show
    @cooker = Cooker.find(params[:id])
    @starters = @cooker.meals.where(typology: "starter")
    @main_courses = @cooker.meals.where(typology: "main_course")
    @desserts = @cooker.meals.where(typology: "dessert")
    @order_item = OrderItem.new
  end
end
