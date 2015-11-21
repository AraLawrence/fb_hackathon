class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :provider
      t.string :provider_id
      t.string :provider_hash

      t.timestamps null: false
    end
  end
end
