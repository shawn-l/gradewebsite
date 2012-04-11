class AddStuNoToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :stuNo, :string
  end

  def self.down
    remove_column :users, :stuNo
  end
end
