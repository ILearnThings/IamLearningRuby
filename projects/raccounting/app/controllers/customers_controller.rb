class CustomersController < ApplicationController
  def index
      @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_param)

    if @customer.save()
      redirect_to @customer
    else
      render 'new'
    end
  end

  private
    def customer_param
    end
end

