class GroupsController < ApplicationController
  def show
    @user = User.find(session[:user_id])
    @group = @user.group
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to '/'
    else
      render "new"
    end
  end

  def edit
  end

private

  def group_params
    params.require(:group).permit(:name)
  end
end
