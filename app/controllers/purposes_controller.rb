class PurposesController < ApplicationController
  before_action :set_purpose, only: %i[ show edit update destroy ]

  # GET /purposes or /purposes.json
  def index
    @purposes = Purpose.all
  end

  # GET /purposes/1 or /purposes/1.json
  def show
  end

  # GET /purposes/new
  def new
    @purpose = Purpose.new
  end

  # GET /purposes/1/edit
  def edit
  end

  # POST /purposes or /purposes.json
  def create
    @purpose = Purpose.new(purpose_params)

    respond_to do |format|
      if @purpose.save
        format.html { redirect_to purpose_url(@purpose), notice: "Purpose was successfully created." }
        format.json { render :show, status: :created, location: @purpose }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purposes/1 or /purposes/1.json
  def update
    respond_to do |format|
      if @purpose.update(purpose_params)
        format.html { redirect_to purpose_url(@purpose), notice: "Purpose was successfully updated." }
        format.json { render :show, status: :ok, location: @purpose }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purposes/1 or /purposes/1.json
  def destroy
    @purpose.destroy

    respond_to do |format|
      format.html { redirect_to purposes_url, notice: "Purpose was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purpose
      @purpose = Purpose.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purpose_params
      params.require(:purpose).permit(:name)
    end
end
