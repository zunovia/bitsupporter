class RemoveSexFromEndUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :end_users, :sex, :integer
  end
end
