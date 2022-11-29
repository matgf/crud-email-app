class UsersController < ApplicationController
  before_action :authorize, only: [:index, :edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, alert: 'user created'
    else

      redirect_to root_url, alert: 'Error creating the user. Try again'
    end
  end

  def index
    @users = User.where.not(id: current_user.id).order('users.created_at DESC')
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
