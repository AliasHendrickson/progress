class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
    @goal = find_goal
    # @rating = Rating.new
  end

  def new
    @goal = Goal.new
  end

  def edit
    @goal = find_goal
  end

  def create
    @user = current_user
    @goal = @user.goals.new(goal_params)

    if @goal.save
      redirect_to @goal
    else
      #This might be different with react
      render "new"
    end
  end

  def update
    @goal = find_goal

    if @goal.update(goal_params)
      redirect_to
    else
      #this may be different with react
      render "edit"
    end
  end

  def destroy
    @goal = find_goal
    @goal.destroy
    redirect_to #main page?
  end

  def completed
    @goal = find_goal
    @goal.update_attributes(completed: true)
    redirect_to @goal
  end


  private

  def goal_params
    params.require(:goal).permit(:description, :duration, :due_date)
  end

  def find_goal
    Goal.find(params[:id])
  end

end
