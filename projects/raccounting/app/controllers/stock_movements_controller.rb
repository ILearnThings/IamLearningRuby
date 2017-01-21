class StockMovementsController < ApplicationController
    def index
    end

    def new
        @stock_movement = StockMovement.new
        @stock_movement.is_entry = (params['is_entry'].to_s.casecmp("giris") == 0)
    end

    def create
        @stock_movement = StockMovement.new(stock_movement_param)
        @stock_movement.company = @company
            
        if @stock_movement.save()
            redirect_to company_stock_movement_path(@company, @stock_movement)
        else
            render 'new'
        end
    end

    private
    def stock_movement_param
      params
        .require(:stock_movement)
          .permit(
            :description,
            :address,
            :town,
            :city, 
            :date_of_issuance, 
            :waybill_number, 
            :actual_date_of_shipment,
            :is_entry)
    end
end
