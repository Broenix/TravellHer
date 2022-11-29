class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :photo_url, :string
    add_column :users, :age, :integer
  end
end
