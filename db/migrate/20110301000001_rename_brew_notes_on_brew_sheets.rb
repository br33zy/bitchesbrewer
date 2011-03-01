class RenameBrewNotesOnBrewSheets < ActiveRecord::Migration
  def self.up
    add_column :brew_sheets, :notes, :text
    remove_column :brew_sheets, :brew_notes
  end

  def self.down
    add_column :brew_sheets, :brew_notes, :text
    remove_column :brew_sheets, :notes
  end
end
