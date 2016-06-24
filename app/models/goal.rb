class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :ratings, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings

  def current_score
    return self.ratings.last.score
  end
end
