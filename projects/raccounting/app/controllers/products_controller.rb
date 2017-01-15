class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
    end

    def create
        @product = Product.new(product_param)
        @product.company_id = 1

        if @product.save()
            redirect_to @product
        else
            render 'new'
        end
    end

    def update
        @product = Product.find(params[:id])

        if @product.update(product_param)
            redirect_to @product
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