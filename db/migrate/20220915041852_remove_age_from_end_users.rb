class RemoveAgeFromEndUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :end_users, :age, :integer
  end
end
