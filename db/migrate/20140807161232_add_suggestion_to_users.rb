class AddSuggestionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :suggestions, :string
  end
end
