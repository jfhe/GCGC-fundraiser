class DeleteUsersIdFromEvents < ActiveRecord::Migration
  def self.up
    remove_column :events, :users_id
  end

  def self.down
    add_column :events, :users_id, :integer
  end
end
