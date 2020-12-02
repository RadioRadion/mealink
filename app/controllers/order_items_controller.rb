class OrderItemsController < ApplicationController
  def create
    @user = current_user
    @cooker = Cooker.find(params[:cooker_id])
    @meal = Meal.find(params["order_item"]["meal_id"])
    @order_item = OrderItem.new(order_items_params)
    raise
    if @order_item.save!
      redirect_to cooker_path(@cooker)
    else
      render 'cookers/show'
    end
  end

  private

  def order_items_params
    params.require(:order_item).permit(:number)
  end

end
