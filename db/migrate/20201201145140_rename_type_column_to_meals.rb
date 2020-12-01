class RenameTypeColumnToMeals < ActiveRecord::Migration[6.0]
  def change
    rename_column :meals, :type, :typology
  end
end
