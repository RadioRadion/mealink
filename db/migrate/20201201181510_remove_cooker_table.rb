class RemoveCookerTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :cookers
  end
end
