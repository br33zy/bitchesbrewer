class CreateFermentables < ActiveRecord::Migration
  def self.up
    create_table :fermentables do |t|
      t.string :name
      t.boolean :mash
      t.float :points_per_kg_per_litre
      t.float :weight_in_kg
      t.references :brew

      t.timestamps
    end
  end

  def self.down
    drop_table :fermentables
  end
end
