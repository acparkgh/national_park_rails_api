class Mytrip < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :park, required: false
  has_many :comments
end
