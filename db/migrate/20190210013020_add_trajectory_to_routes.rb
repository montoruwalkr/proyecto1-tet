class AddTrajectoryToRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :routes, :trajectory, :int, array: true, default: []
  end
end
