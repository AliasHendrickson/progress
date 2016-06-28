class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :progress]
  skip_before_action :require_login, only: [:index, :new, :create]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(session[:user_id])
    @user.experience = 1
    @experience = @user.experience
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def progress
<<<<<<< HEAD
    @user = current_user
    @goals = @user.goals
    @daily_goals = @user.goals.where(duration: "daily")
    @weekly_goals = @user.goals.where(duration: "weekly")
    @phase_goals = @user.goals.where(duration: "phase")
=======
    @counter = 0
    @user = User.find(session[:user_id])
    @user.experience = 1
    @experience = @user.experience
    @avatar_url = "http://www.bugx-exterminators.com/images/gopher.jpg"
    @daily_goals = @user.goals.where(duration: "daily").order('created_at DESC').take(3)
    @weekly_goal = @user.goals.where(duration: "weekly").last
    @phase_goal = @user.goals.where(duration: "phase").last
>>>>>>> master
  end

  # GET /users/1/edit
  def edit
    @user = current_user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.experience = 0
    @user.avatar_url || 'http://www.twpinc.com/media/catalog/category/TWPCAT_GOPHER.jpg'

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :progress, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user || User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :username, :avatar_url)
    end
end
