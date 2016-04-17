class RemoveCityToLand < ActiveRecord::Migration
  def change
    remove_column :lands, :city, :string
  end
end
