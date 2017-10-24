class TrainingProgramsController < ApplicationController
  before_action :set_training_program, only: [:show, :update, :destroy]

  # GET /training_programs
  def index
    @training_programs = TrainingProgram.all

    render json: @training_programs
  end

  # GET /training_programs/1
  def show
    render json: @training_program
  end

  # POST /training_programs
  def create
    @training_program = TrainingProgram.new(training_program_params)

    if @training_program.save
      render json: @training_program, status: :created, location: @training_program
    else
      render json: @training_program.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /training_programs/1
  def update
    if @training_program.update(training_program_params)
      render json: @training_program
    else
      render json: @training_program.errors, status: :unprocessable_entity
    end
  end

  # DELETE /training_programs/1
  def destroy
    # if the start date is after today's date then delete
    if @training_program.start_date > DateTime.now.to_date
      @training_program.destroy
    # if start date on or before today (class started) show following alert 
    else
      render html: "<script>alert('Programs may only be deleted prior to start date!')</script>"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_program
      @training_program = TrainingProgram.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def training_program_params
      params.require(:training_program).permit(:start_date, :end_date, :subject, :max_occupancy)
    end
end
