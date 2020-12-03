class OrdersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_cooker!

  def index
    @orders = current_cooker.orders.where(statut: "paid")
  end

  def create
    raise
  end

end
