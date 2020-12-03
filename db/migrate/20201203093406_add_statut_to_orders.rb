class AddStatutToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :statut, :string
  end
end
