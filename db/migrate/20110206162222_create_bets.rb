class CreateBets < ActiveRecord::Migration
  def self.up
    create_table :bets do |t|
      t.decimal :points
      t.references :user
      t.integer :spot_id
      t.integer :spot_type_id
      t.timestamps
    end
  end

  def self.down
    drop_table :bets
  end
end
