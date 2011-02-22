class CreateBrewSheets < ActiveRecord::Migration
  def self.up
    create_table :brew_sheets do |t|
      t.string :name
      t.string :brewer
      t.datetime :brew_date
      t.text :brew_notes
      t.float :mash_temperature_celsius
      t.float :pitching_temperature_celsius
      t.float :original_gravity
      t.float :final_gravity
      t.float :fermentation_volume_litres
      t.integer :boil_time_minutes
      t.float :achieved_efficiency_percentage
      t.references :brew

      t.timestamps
    end
  end

  def self.down
    drop_table :brew_sheets
  end
end
