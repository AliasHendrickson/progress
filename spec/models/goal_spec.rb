require 'spec_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :transaction

RSpec.describe Goal, :type => :model do
  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end

  goal = Goal.create!(description: "Learn React", duration: "daily", due_date: Date.new)
  rating = Rating.create!(goal_id: goal.id, score: 3)


  describe "Goal#current_score" do
    it "returns the score from the most recent rating" do
      expect(goal.current_score).to eq(rating.score)
    end
  end
end
