class AddTwitterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :string, limit: 16
  end
end
