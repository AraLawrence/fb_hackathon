class CreateLocs < ActiveRecord::Migration
  def change
    create_table :locs do |t|
      t.string :addr
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
