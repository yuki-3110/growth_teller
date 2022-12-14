class CareersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_career, only: %i[ show edit update destroy ]
  before_action :check_user, only: %i[ edit update destroy]

  # GET /careers or /careers.json
  def index
    @careers = Career.all
  end

  # GET /careers/1 or /careers/1.json
  def show
  end

  # GET /careers/new
  def new
    @career = Career.new
  end

  # GET /careers/1/edit
  def edit
  end

  # POST /careers or /careers.json
  def create
    # @career = Career.new(career_params)
    @career = current_user.careers.build(career_params)

    respond_to do |format|
      if @career.save
        format.html { redirect_to user_path(current_user), notice: "経歴を登録しました。" }
        format.json { render :show, status: :created, location: @career }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /careers/1 or /careers/1.json
  def update
    respond_to do |format|
      if @career.update(career_params)
        format.html { redirect_to user_path(current_user), notice: "経歴を更新しました。" }
        format.json { render :show, status: :ok, location: @career }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /careers/1 or /careers/1.json
  def destroy
    @career.destroy

    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: "経歴を削除しました。" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career
      @career = Career.find(params[:id])
    end

    def check_user
      @career = Career.find(params[:id])
      @user = @career.user
      redirect_to user_path(current_user), notice: "他のユーザーの経歴を編集することはできません" unless @user == current_user
    end

    # Only allow a list of trusted parameters through.
    def career_params
      params.require(:career).permit(:industry, :occupation, :company_scale, :position, :start_day, :end_day, :content, :user_id)
    end
end
