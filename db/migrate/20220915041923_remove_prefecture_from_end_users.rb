class RemovePrefectureFromEndUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :end_users, :prefecture, :integer
  end
end
