class Rating < ActiveRecord::Base
  belongs_to :goal
  belongs_to :rater, class_name: "User"
end

