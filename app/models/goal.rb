class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :ratings, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings

  validates :description, presence: true
  validates :duration, presence: true
  validates :due_date, presence: true

  def current_score
    return self.ratings.last.score
  end
end
