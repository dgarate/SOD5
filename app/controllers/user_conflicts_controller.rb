class UserConflictsController < ApplicationController
  before_action :set_user_conflict, only: %w[ show edit update destroy ]

  # GET /user_conflicts
  # GET /user_conflicts.json
  def index
    @user_conflicts = UserConflict.all
  end

  # GET /user_conflicts/1
  # GET /user_conflicts/1.json
  def show
  end

  # GET /user_conflicts/new
  def new
    @user_conflict = UserConflict.new
  end

  # GET /user_conflicts/1/edit
  def edit
  end

  # POST /user_conflicts
  # POST /user_conflicts.json
  def create
    @user_conflict = UserConflict.new(user_conflict_params)

    respond_to do |format|
      if @user_conflict.save
        format.html { redirect_to @user_conflict, notice: "User conflict was successfully created." }
        format.json { render :show, status: :created, location: @user_conflict }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_conflict.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_conflicts/1
  # PATCH/PUT /user_conflicts/1.json
  def update
    respond_to do |format|
      if @user_conflict.update(user_conflict_params)
        format.html { redirect_to @user_conflict, notice: "User conflict was successfully updated." }
        format.json { render :show, status: :ok, location: @user_conflict }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_conflict.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_conflicts/1
  # DELETE /user_conflicts/1.json
  def destroy
    @user_conflict.destroy
    respond_to do |format|
      format.html { redirect_to user_conflicts_url, notice: "User conflict was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_conflict
      @user_conflict = UserConflict.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_conflict_params
      params.require(:user_conflict).permit(:user_access_id, :conflict_id)
    end
end
