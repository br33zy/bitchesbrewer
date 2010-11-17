class CreateHopAdditions < ActiveRecord::Migration
  def self.up
    create_table :hop_additions do |t|
      t.string :name
      t.float :alpha_acid_percentage
      t.float :weight_grams
      t.float :boil_time_minutes
      t.references :brew

      t.timestamps
    end
  end

  def self.down
    drop_table :hop_additions
  end
end
