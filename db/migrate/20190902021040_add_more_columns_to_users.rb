class AddMoreColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :date
    add_column :users, :job, :string
    add_column :users, :bio, :text
    add_column :users, :city, :string
    add_column :users, :photo, :string
  end
end
