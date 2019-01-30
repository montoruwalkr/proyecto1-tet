class CreateRoutes < ActiveRecord::Migration[5.1]
  def change
    create_table :routes do |t|
      t.string :title
      t.string :route
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
