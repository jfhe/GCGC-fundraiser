class AddNameToFunduser < ActiveRecord::Migration
  def self.up
    add_column :fundusers, :first_name, :string
    add_column :fundusers, :last_name, :string
  end

  def self.down
    remove_column :fundusers, :last_name
    remove_column :fundusers, :first_name
  end
end
