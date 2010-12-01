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

ActiveRecord::Schema.define(:version => 20101117105923) do

  create_table "breweries", :force => true do |t|
    t.string   "name"
    t.string   "head_brewer"
    t.float    "mash_efficiency_percentage"
    t.float    "volume_lost_to_mash_litres_per_kg"
    t.float    "evaporation_rate_litres_per_hour"
    t.float    "kettle_tax_litres"
    t.datetime "created_at"
    t.datetime "updated_at"
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

end
