class AddMashTemperatureCelsius < ActiveRecord::Migration
  def self.up
    add_column :brews, :mash_temperature_celsius, :float
  end

  def self.down
    remove_column :brews, :mash_temperature_celsius
  end
end