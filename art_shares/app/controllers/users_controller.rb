class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else
      render json: 'not found', status: :not_found
    end
  end

  def update
    user = User.find_by(id: params[:id])
    if user
      user.update(user_params)
    else
      render json: 'not found', status: :not_found
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_message
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
