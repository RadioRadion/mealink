class OrdersController < ApplicationController

  def index
    @orders = current_user.orders.where(statut: "paid")
  end

  def create
    @user = current_user
    @cooker = Cooker.find(params[:cooker_id])
    @order = Order.create!(statut: "pending", cooker: @cooker, user: @user)
    @meals = @cooker.meals.map { |meal| meal }
    @meals.each do |meal|
      number = params["order"][meal.name].to_i
      create_order_item(number, meal) if number < meal.stock && number != 0
    end
    redirect_to user_orders_path(@user)
  end

  private

  def order_items_params
    params.require(:order_item).permit(:number)
  end

  def create_order_item(number, meal)
    OrderItem.create!(number: number, meal: meal, order: @order)
    new_stock = meal.stock - number
    meal.update(stock: new_stock)
  end

end
