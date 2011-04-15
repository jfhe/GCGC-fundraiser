class AddUidToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :users_id, :integer



  end

  def self.down
    remove_column :events, :users_id
  end
end