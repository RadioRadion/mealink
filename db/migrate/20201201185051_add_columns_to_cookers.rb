class AddColumnsToCookers < ActiveRecord::Migration[6.0]
  def change
    add_column :cookers, :address, :string
    add_column :cookers, :username, :string
    add_column :cookers, :first_name, :string
    add_column :cookers, :last_name, :string
  end
end
