class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @careers = @user.careers.order(start_day: "DESC")
    # @user_careers = User.careers.order(start_day: "DESC")
    # @user_careers = User.where(career: Career).order(start_day: "DESC")
    @user_age = @user.age
  end
end
