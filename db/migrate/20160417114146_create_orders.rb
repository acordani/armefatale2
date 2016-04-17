class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :city_id
      t.integer :user_id
      t.integer :citysearch_id

      t.timestamps null: false
    end
  end
end
