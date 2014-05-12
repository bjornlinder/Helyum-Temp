class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :email, :string, null: false
  end
end
