class AddPrefectureToEndUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :end_users, :prefecture, :string
  end
end
