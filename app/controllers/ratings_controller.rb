class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @goal = Goal.find(params[:goal_id])
    @rating = @goal.ratings.new(rating_params)
    if @rating.save
      redirect_to @goal
    else
      #This might be different with react
      render "new"
    end
  end

  def edit
    @rating = find_rating
  end


  private

  def rating_params
    params.require(:rating).permit(:score, :comment)
  end

  def find_rating
    Rating.find(params[:id])
  end

end
