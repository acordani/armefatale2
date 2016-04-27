class AddCommentToFollowland < ActiveRecord::Migration
  def change
    add_column :followlands, :comment, :text
  end
end
