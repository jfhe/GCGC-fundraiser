# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110415142258) do

  create_table "billing_infos", :force => true do |t|
    t.string   "org_name"
    t.string   "street_address1"
    t.string   "street_address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
  end

  create_table "creditcards", :force => true do |t|
    t.string   "full_name"
    t.string   "address"
    t.string   "zip"
    t.string   "card_number"
    t.string   "expire_date"
    t.string   "card_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "users_id"
  end

  create_table "events", :force => true do |t|
    t.text     "description"
    t.string   "org_name"
    t.string   "categories"
    t.string   "contact_email"
    t.integer  "goal_money"
    t.integer  "current_money"
    t.integer  "num_donors"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "users_id"
  end

  create_table "fundusers", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "fundusers", ["email"], :name => "index_fundusers_on_email", :unique => true
  add_index "fundusers", ["reset_password_token"], :name => "index_fundusers_on_reset_password_token", :unique => true

end
