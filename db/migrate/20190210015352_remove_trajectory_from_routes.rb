class RemoveTrajectoryFromRoutes < ActiveRecord::Migration[5.1]
  def change
    remove_column :routes, :trajectory, :array
  end
end
