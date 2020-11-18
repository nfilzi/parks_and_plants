class Garden < ApplicationRecord
  has_many :plants
  # has_many :gardeners, through: :plants
end
