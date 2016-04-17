class CreateLands < ActiveRecord::Migration
  def change
    create_table :lands do |t|
      t.string :number
      t.integer :surface
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :citysearch
      t.float :latitude
      t.float :longitude
      t.string :file

      t.timestamps null: false
    end
  end
end
