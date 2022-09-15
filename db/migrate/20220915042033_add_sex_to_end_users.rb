class AddSexToEndUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :end_users, :sex, :string
  end
end
