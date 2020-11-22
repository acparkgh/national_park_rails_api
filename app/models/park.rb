class Park < ApplicationRecord
  has_many :parkactivities
  has_many :activities, through: :parkactivities
end
