class CreateCookers < ActiveRecord::Migration[6.0]
  def change
    create_table :cookers do |t|
      t.string :address
      t.string :username
      t.string :name
      t.string :last_name
      t.integer :rating

      t.timestamps
    end
  end
end
