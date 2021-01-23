class ResponsibilityConflictsController < ApplicationController
  before_action :set_responsibility_conflict, only: %w[ show edit update destroy ]

  # GET /responsibility_conflicts
  # GET /responsibility_conflicts.json
  def index
    @responsibility_conflicts = ResponsibilityConflict.all
  end

  # GET /responsibility_conflicts/1
  # GET /responsibility_conflicts/1.json
  def show
  end

  # GET /responsibility_conflicts/new
  def new
    @responsibility_conflict = ResponsibilityConflict.new
  end

  # GET /responsibility_conflicts/1/edit
  def edit
  end

  # POST /responsibility_conflicts
  # POST /responsibility_conflicts.json
  def create
    @responsibility_conflict = ResponsibilityConflict.new(responsibility_conflict_params)

    respond_to do |format|
      if @responsibility_conflict.save
        format.html { redirect_to @responsibility_conflict, notice: "Responsibility conflict was successfully created." }
        format.json { render :show, status: :created, location: @responsibility_conflict }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @responsibility_conflict.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responsibility_conflicts/1
  # PATCH/PUT /responsibility_conflicts/1.json
  def update
    respond_to do |format|
      if @responsibility_conflict.update(responsibility_conflict_params)
        format.html { redirect_to @responsibility_conflict, notice: "Responsibility conflict was successfully updated." }
        format.json { render :show, status: :ok, location: @responsibility_conflict }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @responsibility_conflict.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsibility_conflicts/1
  # DELETE /responsibility_conflicts/1.json
  def destroy
    @responsibility_conflict.destroy
    respond_to do |format|
      format.html { redirect_to responsibility_conflicts_url, notice: "Responsibility conflict was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsibility_conflict
      @responsibility_conflict = ResponsibilityConflict.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def responsibility_conflict_params
      params.require(:responsibility_conflict).permit(:responsibility_id, :control)
    end
end
