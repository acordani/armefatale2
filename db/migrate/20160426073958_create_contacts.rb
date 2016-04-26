class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :mail
      t.string :type
      t.string :phone
      t.text :description

      t.timestamps null: false
    end
  end
end
