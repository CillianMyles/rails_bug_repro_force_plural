class EligableDaysPartsController < ApplicationController
  before_action :set_eligable_days_part, only: %i[ show edit update destroy ]

  # GET /eligable_days_parts or /eligable_days_parts.json
  def index
    @eligable_days_parts = EligableDaysParts.all
  end

  # GET /eligable_days_parts/1 or /eligable_days_parts/1.json
  def show
  end

  # GET /eligable_days_parts/new
  def new
    @eligable_days_part = EligableDaysParts.new
  end

  # GET /eligable_days_parts/1/edit
  def edit
  end

  # POST /eligable_days_parts or /eligable_days_parts.json
  def create
    @eligable_days_part = EligableDaysParts.new(eligable_days_part_params)

    respond_to do |format|
      if @eligable_days_part.save
        format.html { redirect_to @eligable_days_part, notice: "Eligable days parts was successfully created." }
        format.json { render :show, status: :created, location: @eligable_days_part }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @eligable_days_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eligable_days_parts/1 or /eligable_days_parts/1.json
  def update
    respond_to do |format|
      if @eligable_days_part.update(eligable_days_part_params)
        format.html { redirect_to @eligable_days_part, notice: "Eligable days parts was successfully updated." }
        format.json { render :show, status: :ok, location: @eligable_days_part }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @eligable_days_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eligable_days_parts/1 or /eligable_days_parts/1.json
  def destroy
    @eligable_days_part.destroy!

    respond_to do |format|
      format.html { redirect_to eligable_days_parts_index_path, status: :see_other, notice: "Eligable days parts was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eligable_days_part
      @eligable_days_part = EligableDaysParts.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def eligable_days_part_params
      params.expect(eligable_days_part: [ :year, :days_per_week, :public_holidays, :unpaid_leave, :sick_days ])
    end
end
