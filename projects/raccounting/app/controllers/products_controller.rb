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

    def create
        @product = Product.new(product_param)

        if @product.save()
        redirect_to @product
        else
        render 'new'
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