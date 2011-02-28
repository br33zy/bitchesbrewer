class AddNotesToBrew < ActiveRecord::Migration
  def self.up
    add_column :brews, :mash_temperature_celsius, :float
    add_column :brew_sheets, :mash_temperature_celsius, :float
  end

  def self.down
    remove_column :brews, :mash_temperature_celsius
    remove_column :brew_sheets, :mash_temperature_celsius
  end
end