class BedsController < ApplicationController
  before_action :set_bed, only: [:show, :update, :destroy]

  # GET /beds
  def index
    @beds = Bed.all

    render json: @beds
  end

  # GET /beds/1
  def show
    render json: @bed
  end

  # POST /beds
  def create
    @bed = Bed.new(bed_params)

    if @bed.save
      render json: @bed, status: :created, location: @bed
    else
      render json: @bed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beds/1
  def update
    if @bed.update(bed_params)
      render json: @bed
    else
      render json: @bed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beds/1
  def destroy
    @bed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bed
      @bed = Bed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bed_params
      params.require(:bed).permit(:hospital_name, :hospital_location, :beds_available, :patient_id)
    end
end
