class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.references :event, index: true, foreign_key: true
      t.references :loc, index: true, foreign_key: true
      t.string :s_time
      t.string :e_time
      t.integer :order

      t.timestamps null: false
    end
  end
end
