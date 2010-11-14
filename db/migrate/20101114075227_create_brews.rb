class CreateBrews < ActiveRecord::Migration
  def self.up
    create_table :brews do |t|
      t.string :name
      t.string :brewer
      t.float :original_gravity
      t.float :final_gravity
      t.float :fermentation_volume_litres
      t.integer :boil_time_minutes
      t.references :brewery

      t.timestamps
    end
  end

  def self.down
    drop_table :brews
  end
end
