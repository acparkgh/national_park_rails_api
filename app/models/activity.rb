class Activity < ApplicationRecord
  has_many :parkactivities
  has_many :parks, through: :parkactivities
end
