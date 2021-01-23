class UserResponsibilitiesController < ApplicationController
  before_action :set_user_responsibility, only: %w[ show edit update destroy ]

  # GET /user_responsibilities
  # GET /user_responsibilities.json
  def index
    @user_responsibilities = UserResponsibility.all
  end

  # GET /user_responsibilities/1
  # GET /user_responsibilities/1.json
  def show
  end

  # GET /user_responsibilities/new
  def new
    @user_responsibility = UserResponsibility.new
  end

  # GET /user_responsibilities/1/edit
  def edit
  end

  # POST /user_responsibilities
  # POST /user_responsibilities.json
  def create
    @user_responsibility = UserResponsibility.new(user_responsibility_params)

    respond_to do |format|
      if @user_responsibility.save
        format.html { redirect_to @user_responsibility, notice: "User responsibility was successfully created." }
        format.json { render :show, status: :created, location: @user_responsibility }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_responsibilities/1
  # PATCH/PUT /user_responsibilities/1.json
  def update
    respond_to do |format|
      if @user_responsibility.update(user_responsibility_params)
        format.html { redirect_to @user_responsibility, notice: "User responsibility was successfully updated." }
        format.json { render :show, status: :ok, location: @user_responsibility }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_responsibilities/1
  # DELETE /user_responsibilities/1.json
  def destroy
    @user_responsibility.destroy
    respond_to do |format|
      format.html { redirect_to user_responsibilities_url, notice: "User responsibility was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_responsibility
      @user_responsibility = UserResponsibility.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_responsibility_params
      params.require(:user_responsibility).permit(:user_access_id, :responsibility_id)
    end
end
