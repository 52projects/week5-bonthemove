class AddBcashToUserRecord < ActiveRecord::Migration
  def self.up
    add_column :users, :bcash, :decimal
    rename_column :bets, :points, :bcash
  end

  def self.down
    remove_column :users, :bcash
    rename_column :bets, :bcash, :points
  end
end
