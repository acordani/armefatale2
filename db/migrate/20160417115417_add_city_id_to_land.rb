class AddCityIdToLand < ActiveRecord::Migration
  def change
    add_column :lands, :city_id, :integer
  end
end
