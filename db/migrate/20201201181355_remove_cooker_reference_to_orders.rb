class RemoveCookerReferenceToOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :cooker, index: true, foreign_key: true
  end
end
