class AddCookerReferenceToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :cooker, foreign_key: true
  end
end
