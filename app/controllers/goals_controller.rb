class GoalsController < ApplicationController
  def index
    @goals = Goal.all
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
    @goal = Goal.new

    if @goal.save
      redirect_to #somewhere react? probably the main page
    else
      #This might be different with react
      render "new"
    end
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

  def destroy
    @goal = find_goal
    @goal.destroy
    redirect_to #main page?
  end


  private

  def goal_params
    params.require(:goal).permit(:description, :duration, :completed, :due_date)

  def find_goal
    Goal.find(params[:id])
  end

end
