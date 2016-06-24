class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new

    if @rating.save
      redirect_to #somewhere react? probably the main page
    else
      #This might be different with react
      render "new"
    end
  end

  def edit
    @rating = find_rating
  end

  def update
    @goal = find_goal

    if @goal.update(goal_params)
      redirect_to #somewhere react? probably the main page
    else
      #this may be different with react
      render "edit"
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:score, :comment)

  def find_rating
    Rating.find(params[:id])
  end

end
