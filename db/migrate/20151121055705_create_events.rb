class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :owner_id
      t.string :status
      t.string :title
      t.text :descrip

      t.timestamps null: false
    end
  end
end
