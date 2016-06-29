class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[crypted_password] }

  validates :email, uniqueness: true

  belongs_to :group
  has_many :goals
  has_many :ratings, through: :goals, source: :rater

  LEVELS = [1, 25, 60, 120, 250, 420, 600, 850]

  def current_level
    new_level = LEVELS.index { |level| experience < level }
    return new_level < 1 ? 1 : new_level
  end

  def progress_bar_width
    above_last_level = self.experience - LEVELS[current_level - 1]
    p above_last_level
    proportion = above_last_level.to_f / LEVELS[current_level]
    p proportion
    width = proportion * 100
    p width
    rounded_width = width.round
    return rounded_width
  end
end
