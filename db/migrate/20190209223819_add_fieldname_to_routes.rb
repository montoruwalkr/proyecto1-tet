class AddFieldnameToRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :routes, :coordinates, :array
  end
end
