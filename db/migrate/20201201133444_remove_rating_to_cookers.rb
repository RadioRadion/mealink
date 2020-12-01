class RemoveRatingToCookers < ActiveRecord::Migration[6.0]
  def change
    remove_column :cookers, :rating, :integer
  end
end
