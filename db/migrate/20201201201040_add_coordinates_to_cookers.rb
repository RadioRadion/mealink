class AddCoordinatesToCookers < ActiveRecord::Migration[6.0]
  def change
    add_column :cookers, :latitude, :float
    add_column :cookers, :longitude, :float
  end
end
