class ExperiencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_experience, only: %i[ show edit update destroy index_user ]
  before_action :check_user, only: %i[ edit update destroy]

  # GET /experiences or /experiences.json
  def index
    @experiences = Experience.all.order(created_at: "DESC")
  end

  # GET /experiences/1 or /experiences/1.json
  def show
  end

  # GET /experiences/new
  def new
    @experience = Experience.new
  end

  # GET /experiences/1/edit
  def edit
  end

  # POST /experiences or /experiences.json
  def create
    @experience = current_user.experiences.build(experience_params)

    respond_to do |format|
      if @experience.save
        format.html { redirect_to experiences_path, notice: "Experience was successfully created." }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiences/1 or /experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to experiences_path, notice: "Experience was successfully updated." }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1 or /experiences/1.json
  def destroy
    @experience.destroy

    respond_to do |format|
      format.html { redirect_to experiences_url, notice: "Experience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # def index_user
  #   @user = User.find(params[:id])
  #   @experiences = @user.experiences.order(created_at: "DESC")
  #   # @careers = @user.careers.order(start_day: "DESC")
  #   # @experiences = @user.experiences.order(created_at: "DESC")
  #   # @experiences = @user.experiences.order(created_at: "DESC")
  #   # @tasks =Task.where(moving: Moving.where(user: current_user)
  #   # @task = Moving.find_by(user: current_user, moving_day: params[:task][:moving_day]).tasks.build(task_params)
  #   # @user_careers = User.careers.order(start_day: "DESC")
  #   # @user_careers = User.where(career: Career).order(start_day: "DESC")
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    def check_user
      @experience = Experience.find(params[:id])
      @user = @experience.user
      redirect_to experiences_path, notice: "他のユーザーの経歴を編集することはできません" unless @user == current_user
    end

    # Only allow a list of trusted parameters through.
    def experience_params
      params.require(:experience).permit(:title, :industry, :occupation, :study_method, :learn_age, :learn_hour, :trigger, :ingenuity, :result, :user_id, { label_ids: [] })
    end
end
