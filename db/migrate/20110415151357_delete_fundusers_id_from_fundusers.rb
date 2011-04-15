class DeleteFundusersIdFromFundusers < ActiveRecord::Migration
  def self.up
    remove_column :fundusers, :fundusers_id
  end

  def self.down
    add_column :fundusers, :fundusers_id, :integer
  end
end
