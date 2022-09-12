class AddColumnToPost < ActiveRecord::Migration[6.1]
  def change

    add_column :posts, :title, :string, null: false, default: '', limit: 50
    add_column :posts, :body, :text, null: false, default: '', limit: 500
    add_column :posts, :end_user_id, :integer

  end
end
