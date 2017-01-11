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

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_param)

    if @customer.save()
      redirect_to @customer
    else
      render 'new'
    end
  end

  def update
    @customer = Customer.find(params[:id])

      if @customer.update(customer_param)
        redirect_to @customer
      else
        render 'edit'
      end
  end

  private
    def customer_param
      params
        .require(:customer)
          .permit(
            :company_title,
            :short_name,
            :email,
            :phone_number, 
            :fax_number, 
            :iban, 
            :address, 
            :customer_type, 
            :nid, #tcnumber or tax id 
            :tax_office)
    end
end

