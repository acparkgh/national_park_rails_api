class Comment < ApplicationRecord
  belongs_to :mytrip, required: false
end
