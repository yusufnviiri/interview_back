class UsersController < ApplicationController
  def index
    @users=User.all
    render json: @users
  end
  def new
    @user=User.new
  end


  def create
    @user=User.create!(user_params)
    if @user.save
    render json: @user
    else
      render json: @user.errors,status: :unprocessable_entity
    end
  end
  def show
    @no_user={content:'no user with such an email'}
    @user=User.where(password:params[:password],email:params[:email])
    if @user
    render json: @user
    else 
      render json:@no_user
    end
  end
  def user_params
    params.require(:user).permit(:email,:password,:name)
  end
end
