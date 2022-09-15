class AddAgeToEndUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :end_users, :age, :string
  end
end
