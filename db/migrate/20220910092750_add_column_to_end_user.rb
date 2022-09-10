class AddColumnToEndUser < ActiveRecord::Migration[6.1]
  def change

    add_column :end_users, :name, :string, null: false, default: '', limit: 50
    add_column :end_users, :express, :text, limit: 500
    add_column :end_users, :disorder, :string, null: false, default: '', limit: 50
    add_column :end_users, :age, :integer, null: false, default: 0
    add_column :end_users, :sex, :integer, null: false, default: 0
    add_column :end_users, :prefecture, :integer, null: false, default: 0
    add_column :end_users, :want, :text, limit: 500
    add_column :end_users, :is_active, :boolean, default: true


  end
end
