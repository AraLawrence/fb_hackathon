class AddingColumnsSegment < ActiveRecord::Migration
  def change
  	add_column :segments, :place, :string
  	add_column :segments, :type, :string 
  end
end
