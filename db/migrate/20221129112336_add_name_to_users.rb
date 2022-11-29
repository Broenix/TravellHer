class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :photo_url, :string
    add_column :users, :age, :integer
    add_column :categories, :photo_url, :string
    add_column :spots, :photo_url, :string
  end
end
  