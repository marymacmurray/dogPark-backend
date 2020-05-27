class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy, :user_team_index, :user_projects_index, :user_teammates]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end


  # GET /users/1/team
  def user_team_index
    @users = User.where(team:@user.team)

    render json: @users, include: :projects
  end

  # GET /users/1/projects
    def user_projects_index
      @project = Project.all
      @user.projects 
      render json: @users, include: :projects
    end

  # POST /users
  def create
    @user = User.new(user_params)
    
    if @user.save
      @token = encode({user_id: @user.id});
      render json: { user: @user.frontend_data, token: @token }, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Using a callback to share common setup between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :email, :password_digest, :avatar, :first_name, :last_name, :title, :team, :city, :love_datadog, :weekend, :top_skills, :gender, :pronouns)
    end
end
