class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :authorize_company
  layout :layout_by_resource

private

  def authorize_company
    if !devise_controller?      
      @company = Company.find(current_user.company.id)
      redirect_to company_url(current_user.company.id) unless @company.id.to_s == params[:company_id].to_s 
      #unauthorized access, because company id is different then logined company
    end
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
