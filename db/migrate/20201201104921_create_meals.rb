class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :type
      t.integer :price
      t.integer :rating
      t.integer :stock
      t.references :cooker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
