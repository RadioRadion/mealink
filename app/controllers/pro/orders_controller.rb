class Pro::OrdersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_cooker!

  def index
    @orders = current_cooker.orders.where(statut: "pending")
  end

  def update
    @order = Order.find(params[:id])
    @order.statut = "paid"
    @order.save
    redirect_to pro_orders_path
  end

end
