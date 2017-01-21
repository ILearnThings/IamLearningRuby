class ProductsController < ApplicationController
    def index
        @products = Product.where(company_id: params[:company_id])
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
        @product.do_stock_tracking = true
    end

    def edit
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(product_param)
        @product.company = @company
        
        if @product.save()
            redirect_to company_product_path(@company, @product)
        else
            render 'new'
        end
    end

    def update
        @product = Product.find(params[:id])

        if @product.update(product_param)
            redirect_to company_product_path(@company, @product)
        else
            render 'edit'
        end
    end

  private
    def product_param
      params
        .require(:product)
          .permit(
            :name,
            :code,
            :do_stock_tracking,
            :amount, 
            :purchase_sales_unit, 
            :purchase_price, 
            :sales_price, 
            :vat)
    end
end