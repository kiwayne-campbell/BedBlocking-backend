class PocsController < ApplicationController
  before_action :set_poc, only: [:show, :update, :destroy]

  # GET /pocs
  def index
    @pocs = Poc.all

    render json: @pocs
  end

  # GET /pocs/1
  def show
    render json: @poc
  end

  # POST /pocs
  def create
    @poc = Poc.new(poc_params)

    if @poc.save
      render json: @poc, status: :created, location: @poc
    else
      render json: @poc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pocs/1
  def update
    if @poc.update(poc_params)
      render json: @poc
    else
      render json: @poc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pocs/1
  def destroy
    @poc.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poc
      @poc = Poc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poc_params
      params.require(:poc).permit(:home_care, :meals_on_wheels, :frozen_meals, :day_care, :day_hospital, :district_nurse, :physio, :residential_home, :nursing_home, :other, :notes, :patient_id)
    end
end
