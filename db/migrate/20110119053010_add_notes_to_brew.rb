class AddNotesToBrew < ActiveRecord::Migration
  def self.up
    add_column :brews, :notes, :text
  end

  def self.down
    remove_column :brews, :notes
  end
end
