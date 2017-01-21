class CompaniesController < ApplicationController
    def show
    end

private

    def authorize_company
        @company = Company.find(current_user.company.id)
        redirect_to @company unless @company.id.to_s == params[:id].to_s
    end
end
