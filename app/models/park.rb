class Park < ApplicationRecord
  has_many :parkactivities
  has_many :activities, through: :parkactivities

  has_many :mytrips
  has_many :users, through: :mytrips
end
