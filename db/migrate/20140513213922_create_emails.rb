class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email, null: false

      t.timestamps
    end
  end
end
