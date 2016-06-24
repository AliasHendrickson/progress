class Goal < ActiveRecord::Base
  has_many :ratings, dependent: :destroy

  def current_score
    return self.ratings.last.score
  end
end
