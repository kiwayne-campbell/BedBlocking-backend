class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy]

  # GET /patients
  def index
    if params[:q]
      @patients = Patient.where("first_name ILIKE :q OR last_name ILIKE :q OR diagnosis ILIKE :q OR patient_no::text ILIKE :q", q: "%#{params[:q]}%")
    else
      @patients = Patient.all
    end

    render json: @patients
  end

  # GET /patients/1
  def show
    render json: @patient, include: ['users']
  end

  # POST /patients
  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      @patient.users << current_user
      render json: @patient, status: :created, location: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

    # POST /patients/:id/addPatient
  def add_patient
    @patient.users << current_user
    render json: @patient
  end

  # POST /patients/:id/removePatient
  def remove_patient
    @patient.users.delete(current_user)
    render json: @patient
  end

  # PATCH/PUT /patients/1
  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  def destroy
    @patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params
      params.require(:patient).permit(:patient_no, :first_name, :last_name, :diagnosis, user_ids:[])
    end
end
