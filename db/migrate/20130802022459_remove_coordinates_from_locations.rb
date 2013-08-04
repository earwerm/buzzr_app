class RemoveCoordinatesFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :coordinates, :float
  end
end
