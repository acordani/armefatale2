class CreateFollowlands < ActiveRecord::Migration
  def change
    create_table :followlands do |t|
      t.references :user, index: true, foreign_key: true
      t.references :land, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
