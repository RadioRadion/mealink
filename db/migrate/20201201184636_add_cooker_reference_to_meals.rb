class AddCookerReferenceToMeals < ActiveRecord::Migration[6.0]
  def change
    add_reference :meals, :cooker, foreign_key: true
  end
end
