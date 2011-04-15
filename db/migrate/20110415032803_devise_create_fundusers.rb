class DeviseCreateFundusers < ActiveRecord::Migration
  def self.up
    create_table(:fundusers) do |t|
      t.database_authenticatable :null => false
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :fundusers, :email,                :unique => true
    #add_index :fundusers, :confirmation_token,   :unique => true
    add_index :fundusers, :reset_password_token, :unique => true
    # add_index :fundusers, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :fundusers
  end
end
