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

ActiveRecord::Schema.define(:version => 20110209115534) do

  create_table "brew_sheets", :force => true do |t|
    t.string   "name"
    t.string   "brewer"
    t.datetime "brew_date"
    t.text     "brew_notes"
    t.float    "mash_temperature_celsius"
    t.float    "pitching_temperature_celsius"
    t.float    "original_gravity"
    t.float    "final_gravity"
    t.float    "fermentation_volume_litres"
    t.integer  "boil_time_minutes"
    t.float    "achieved_efficiency_percentage"
    t.integer  "brew_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "breweries", :force => true do |t|
    t.string   "name"
    t.string   "head_brewer"
    t.float    "mash_efficiency_percentage"
    t.float    "volume_lost_to_mash_litres_per_kg"
    t.float    "evaporation_rate_litres_per_hour"
    t.float    "kettle_tax_litres"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "brews", :force => true do |t|
    t.string   "name"
    t.string   "brewer"
    t.float    "original_gravity"
    t.float    "final_gravity"
    t.float    "fermentation_volume_litres"
    t.integer  "boil_time_minutes"
    t.integer  "brewery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
  end

  create_table "fermentables", :force => true do |t|
    t.string   "name"
    t.boolean  "mash"
    t.float    "points_per_kg_per_litre"
    t.float    "weight_in_kg"
    t.integer  "brew_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hop_additions", :force => true do |t|
    t.string   "name"
    t.float    "alpha_acid_percentage"
    t.float    "weight_grams"
    t.float    "boil_time_minutes"
    t.integer  "brew_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
