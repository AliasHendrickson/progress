class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @goal = Goal.find(params[:goal_id])
    user = @goal.user
    @rating = @goal.ratings.new(rating_params)
    @rating.rater_id = current_user.id

    respond_to do |format|
      if @rating.save
        user.update_attributes(experience: user.experience + @rating.score)
        format.html { redirect_to '/', notice: 'Rating was successfully created.' }
        format.json { render json: [@rating, user.current_level, user.progress_bar_width] }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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
