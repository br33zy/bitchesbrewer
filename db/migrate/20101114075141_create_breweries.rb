class CreateBreweries < ActiveRecord::Migration
  def self.up
    create_table :breweries do |t|
      t.string :name
      t.string :head_brewer
      t.float :mash_efficiency_percentage
      t.float :volume_lost_to_mash_litres_per_kg
      t.float :kettle_tax_litres

      t.timestamps
    end
  end

  def self.down
    drop_table :breweries
  end
end
