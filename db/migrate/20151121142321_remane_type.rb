class RemaneType < ActiveRecord::Migration
  def change
  	rename_column :segments, :type, :interaction
  end
end
