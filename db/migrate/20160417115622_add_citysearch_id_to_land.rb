class AddCitysearchIdToLand < ActiveRecord::Migration
  def change
    add_column :lands, :citysearch_id, :integer
  end
end
