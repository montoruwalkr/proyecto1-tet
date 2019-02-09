class Route < ApplicationRecord
  belongs_to :user
  serialize :coordinates, Array
end
