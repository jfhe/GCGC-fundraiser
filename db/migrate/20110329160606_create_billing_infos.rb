class CreateBillingInfos < ActiveRecord::Migration
  def self.up
    create_table :billing_infos do |t|
      t.string :org_name
      t.string :street_address1
      t.string :street_address2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :billing_infos
  end
end