class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :goals, through: :taggings
end

