class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :update, :destroy]

  # GET /customers
  def index
    
    # Ability to display customers who have not placed an order  
    if params[:active] == "false"  
      @customers = Customer.where(:active => false)
      render json: @customers
    elsif 
        params[:active] == "true"  
        @customers = Customer.where(:active => true)
        render json: @customers
    else
      @customers = Customer.all
      render json: @customers
    end

  end

  # GET /customers/1
  def show
    render json: @customer
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:last_name, :first_name, :date_customer_created, :active, :last_date_used, :email, :street_address, :city, :us_state, :zip_code)
    end
end
