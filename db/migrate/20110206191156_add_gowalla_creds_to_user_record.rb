class AddGowallaCredsToUserRecord < ActiveRecord::Migration
  def self.up
    add_column :users, :gowalla_username, :string
    add_column :users, :gowalla_password, :string
  end

  def self.down
    remove_column :users, :gowalla_username
    remove_column :users, :gowalla_password
  end
end
