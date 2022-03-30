class UsersController < ApplicationController

  before_action :load_user, except: [:index, :new, :create]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id 
      redirect_to '/' 
    else 
      redirect_to '/signup' 
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
    end

    def load_user
      @user = User.find(params[:id])
    end
end
