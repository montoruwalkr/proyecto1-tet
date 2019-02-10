class RemoveCoordinatesFromRoutes < ActiveRecord::Migration[5.1]
  def change
    remove_column :routes, :coordinates, :array
  end
end
