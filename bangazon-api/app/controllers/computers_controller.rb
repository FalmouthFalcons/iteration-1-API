class ComputersController < ApplicationController
  before_action :set_computer, only: [:show, :update, :destroy]

  # GET /computers
  def index
    @computers = Computer.all

    render json: @computers
  end

  # GET /computers/1
  def show
    render json: @computer
  end

  # POST /computers
  def create
    @computer = Computer.new(computer_params)

    if @computer.save
      render json: @computer, status: :created, location: @computer
    else
      render json: @computer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /computers/1
  def update
    if @computer.update(computer_params)
      render json: @computer
    else
      render json: @computer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /computers/1
  def destroy
    @computer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer
      @computer = Computer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def computer_params
      params.require(:computer).permit(:purchase_date, :decomission_date)
    end
end
