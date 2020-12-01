class AddCookerReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :cooker, foreign_key: true
  end
end
