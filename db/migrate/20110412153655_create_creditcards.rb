class CreateCreditcards < ActiveRecord::Migration
  def self.up
    create_table :creditcards do |t|
      t.string :full_name
      t.string :address
      t.string :zip
      t.string :card_number
      t.string :expire_date
      t.string :card_code

      t.timestamps
    end
  end

  def self.down
    drop_table :creditcards
  end
end