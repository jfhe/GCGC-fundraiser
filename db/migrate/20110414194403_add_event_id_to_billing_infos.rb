class AddEventIdToBillingInfos < ActiveRecord::Migration
  def self.up
    add_column :billing_infos, :event_id, :integer
  end

  def self.down
    remove_column :billing_infos, :event_id
  end
end
