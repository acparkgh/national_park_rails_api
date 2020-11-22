class Parkactivity < ApplicationRecord
  belongs_to :park, required: false
  belongs_to :activity, required: false
end
