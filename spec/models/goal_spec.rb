require 'spec_helper'
require 'database_cleaner'

RSpec.describe Goal, :type => :model do

  goal = Goal.create!(description: "Be able to add a simple, concise React Component to my app without copy/pasting", due_date: Date.new, duration: "weekly")
  rating = Rating.create!(goal_id: goal.id, score: 3)


  describe "Goal#current_score" do
    it "returns the score from the most recent rating" do
      expect(goal.current_score).to eq(rating.score)
    end
  end
end
