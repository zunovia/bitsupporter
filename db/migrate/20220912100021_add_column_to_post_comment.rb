class AddColumnToPostComment < ActiveRecord::Migration[6.1]
  def change

  add_column :post_comments, :comment, :text, limit: 500
  add_column :post_comments, :end_user_id, :integer
  add_column :post_comments, :post_id, :integer

  end
end
