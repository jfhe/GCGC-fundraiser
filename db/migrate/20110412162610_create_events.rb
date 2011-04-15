class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.text :description
      t.string :org_name
      t.string :categories
      t.string :contact_email
      t.integer :goal_money
      t.integer :current_money
      t.integer :num_donors

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end