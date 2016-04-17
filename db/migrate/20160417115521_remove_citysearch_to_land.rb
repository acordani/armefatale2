class RemoveCitysearchToLand < ActiveRecord::Migration
  def change
    remove_column :lands, :citysearch, :string
  end
end
