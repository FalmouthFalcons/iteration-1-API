class EmployeeTrainingProgramsController < ApplicationController
  before_action :set_employee_training_program, only: [:show, :update, :destroy]

  # GET /employee_training_programs
  def index
    @employee_training_programs = EmployeeTrainingProgram.all

    render json: @employee_training_programs
  end

  # GET /employee_training_programs/1
  def show
    render json: @employee_training_program
  end

  # POST /employee_training_programs
  def create
    @employee_training_program = EmployeeTrainingProgram.new(employee_training_program_params)

    if @employee_training_program.save
      render json: @employee_training_program, status: :created, location: @employee_training_program
    else
      render json: @employee_training_program.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employee_training_programs/1
  def update
    if @employee_training_program.update(employee_training_program_params)
      render json: @employee_training_program
    else
      render json: @employee_training_program.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employee_training_programs/1
  def destroy
    @employee_training_program.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_training_program
      @employee_training_program = EmployeeTrainingProgram.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_training_program_params
      params.require(:employee_training_program).permit(:employee_id, :training_program_id)
    end
end
