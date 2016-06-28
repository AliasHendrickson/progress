class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @goal = Goal.find(params[:goal_id])
    owner = @goal.user
    @rating = @goal.ratings.new(rating_params)
    @rating.rater_id = current_user.id
    if @rating.save
      owner.update_attributes(experience: owner.update_experience(@goal))
      redirect_to "/"
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
