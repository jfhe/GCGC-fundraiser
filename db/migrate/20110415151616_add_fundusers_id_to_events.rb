class AddFundusersIdToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :fundusers_id, :integer
  end

  def self.down
    remove_column :events, :fundusers_id
  end
end
