class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[crypted_password] }

  validates :email, uniqueness: true

  has_many :goals
  has_many :ratings, through: :goals, source: :rater

  LEVELS = [0, 25, 60, 120, 250, 420, 600, 850]

  def current_level
    LEVELS.index { |level| experience < level }
  end

  def level_progress
    (((experience - LEVELS[current_level - 1]) / LEVELS[current_level]) * 100).round
  end
end
