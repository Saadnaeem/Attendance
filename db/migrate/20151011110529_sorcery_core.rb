class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :full
      t.string :full_name,            :null => false
      t.bigint :phone_number,            :null => false
      t.string :avatar,            :null => false
      t.string :address,            :null => false
    end

    add_index :users, :email, unique: true
  end
end