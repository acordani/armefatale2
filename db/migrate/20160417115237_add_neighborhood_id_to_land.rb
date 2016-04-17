class AddNeighborhoodIdToLand < ActiveRecord::Migration
  def change
    add_column :lands, :neighborhood_id, :integer
  end
end
