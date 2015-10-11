class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.bigint :phone_number
      t.string :email_address
      t.string :address
      t.string :avatar
      t.string :password

      t.timestamps null: false
    end
  end
end
