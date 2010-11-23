class CreateUser2s < ActiveRecord::Migration
  def self.up
    create_table :user2s do |t|
      t.string :name
      t.string :mail

      t.timestamps
    end
  end

  def self.down
    drop_table :user2s
  end
end
