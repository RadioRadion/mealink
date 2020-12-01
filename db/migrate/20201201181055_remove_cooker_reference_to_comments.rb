class RemoveCookerReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    remove_reference :comments, :cooker, index: true, foreign_key: true
  end
end
