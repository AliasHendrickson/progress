class GroupsController < ApplicationController
  def show
    @user = User.find(session[:user_id])
    @group = @user.group
  end

  def new
    @group = Group.new
  end

  def create
  end

  def edit
  end
end
