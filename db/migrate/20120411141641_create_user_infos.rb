class CreateUserInfos < ActiveRecord::Migration
  def self.up
    create_table :user_infos do |t|
      t.string :name
      t.string :email
      t.string :imgUrl
      t.string :phone
      t.string :qq
      t.string :stuNo

      t.timestamps
    end
  end

  def self.down
    drop_table :user_infos
  end
end
