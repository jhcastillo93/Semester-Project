class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :title, :string
    add_column :users, :description, :string
  end
end
