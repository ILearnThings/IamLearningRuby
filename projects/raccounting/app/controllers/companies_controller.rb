class CompaniesController < ApplicationController
    def show
    end

    private
    
    def validate_company_ownership
        authenticate_user!
        @company = Company.find(current_user.company.id)

        if @company.id.to_s != params[:id].to_s
            redirect_to @company
        end
    end
end
