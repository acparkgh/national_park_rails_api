class User < ApplicationRecord
  has_many :mytrips
  has_many :parks, through: :mytrips
end
