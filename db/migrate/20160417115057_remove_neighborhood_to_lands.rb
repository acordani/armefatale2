class RemoveNeighborhoodToLands < ActiveRecord::Migration
  def change
    remove_column :lands, :neighborhood, :string
  end
end
