class AddCoordinates < ActiveRecord::Migration[5.1]
  def change
  	add_column :coordinates, :integer
  end
end

