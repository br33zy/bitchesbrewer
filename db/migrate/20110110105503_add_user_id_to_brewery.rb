class AddUserIdToBrewery < ActiveRecord::Migration
  def self.up
    add_column :breweries, :user_id, :integer
  end

  def self.down
    remove_column :breweries, :user_id
  end
end
