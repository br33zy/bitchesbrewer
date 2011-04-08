class AddAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :admin, :boolean

    sql = 'UPDATE users SET admin = 1 WHERE email = "breezy@binningup.com"'
    execute(sql)
  end

  def self.down
    remove_column :users, :admin
  end
end
