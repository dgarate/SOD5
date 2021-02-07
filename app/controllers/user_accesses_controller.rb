class UserAccessesController < ApplicationController
  before_action :set_user_access, only: %w[ show edit update destroy ]

  # GET /user_accesses
  # GET /user_accesses.json
  def import_xlsx
    file = params[:file]
    UserAccess.read_xlsx(file.path)
  end
  
  def index
    @user_accesses = UserAccess.all

    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=user_accesses.xlsx"
      }
      format.html { render :index }
    end

  end

  # GET /user_accesses/1
  # GET /user_accesses/1.json
  def show
  end

  # GET /user_accesses/new
  def new
    @user_access = UserAccess.new
  end

  # GET /user_accesses/1/edit
  def edit
  end

  # POST /user_accesses
  # POST /user_accesses.json
  def create
    @user_access = UserAccess.new(user_access_params)

    respond_to do |format|
      if @user_access.save
        format.html { redirect_to @user_access, notice: "User access was successfully created." }
        format.json { render :show, status: :created, location: @user_access }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_accesses/1
  # PATCH/PUT /user_accesses/1.json
  def update
    respond_to do |format|
      if @user_access.update(user_access_params)
        format.html { redirect_to @user_access, notice: "User access was successfully updated." }
        format.json { render :show, status: :ok, location: @user_access }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_accesses/1
  # DELETE /user_accesses/1.json
  def destroy
    @user_access.destroy
    respond_to do |format|
      format.html { redirect_to user_accesses_url, notice: "User access was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_access
      @user_access = UserAccess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_access_params
      params.require(:user_access).permit(:username, responsibility_ids:[])
    end
end
