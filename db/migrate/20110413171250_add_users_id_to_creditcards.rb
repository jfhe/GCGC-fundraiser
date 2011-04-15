class AddUsersIdToCreditcards < ActiveRecord::Migration
  def self.up
    add_column :creditcards, :users_id, :string
  end

  def self.down
    remove_column :creditcards, :users_id
  end
end