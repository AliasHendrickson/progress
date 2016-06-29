class GoalsController < ApplicationController
  def index
    @user = current_user
    @daily_goals = @user.goals.where(duration: "daily", completed: true).order('created_at DESC')
    @weekly_goals = @user.goals.where(duration: "weekly", completed: true).order('created_at DESC')
    @phase_goals = @user.goals.where(duration: "phase", completed: true).order('created_at DESC')
  end

  def show
    @goal = find_goal
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
      Rating.create!(score: 0, comment: "", rater: current_user)
      redirect_to '/'
    else
      #This might be different with react
      render "new"
    end
  end

  def update
    @goal = find_goal

    if @goal.update(goal_params)
      redirect_to progress_path
    else
      #this may be different with react
      render "edit"
    end
  end

  def destroy
    @goal = find_goal
    @goal.destroy
    redirect_to progress_path
  end

  def completed
    @goal = find_goal
    if @goal.completed
      @goal.update_attributes(completed: false)
      redirect_to root_path
    else
      @goal.update_attributes(completed: true)
      redirect_to root_path
    end
  end


  private

  def goal_params
    params.require(:goal).permit(:description, :duration, :due_date)
  end

  def find_goal
    Goal.find(params[:id])
  end

end
