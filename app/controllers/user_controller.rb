class UserController < ApplicationController
  def index
  end

  def create
    User.create user_params
    redirect_to 
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname);
  end
end
