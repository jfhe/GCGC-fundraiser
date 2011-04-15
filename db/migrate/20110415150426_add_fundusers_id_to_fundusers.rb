class AddFundusersIdToFundusers < ActiveRecord::Migration
  def self.up
    add_column :fundusers, :fundusers_id, :integer
  end

  def self.down
    remove_column :fundusers, :fundusers_id
  end
end
