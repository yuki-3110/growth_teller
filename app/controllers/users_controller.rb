class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @careers = @user.careers.order(start_day: "DESC")
    @experiences = @user.experiences.order(created_at: "DESC")
    @favorites = @user.favorites.order(created_at: "DESC")
    # binding.irb
    # @experiences = @user.experiences.order(created_at: "DESC")
    # @tasks =Task.where(moving: Moving.where(user: current_user)
    # @task = Moving.find_by(user: current_user, moving_day: params[:task][:moving_day]).tasks.build(task_params)
    # @user_careers = User.careers.order(start_day: "DESC")
    # @user_careers = User.where(career: Career).order(start_day: "DESC")
    @user_age = @user.age
  end
end
