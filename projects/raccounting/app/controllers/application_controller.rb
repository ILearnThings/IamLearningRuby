class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user! # except: [:login]
  before_action :validate_company_ownership #, :unless => :authenticate_user
  # skip_before_action :current_company
  #before_action :current_company #, :unless => :authenticate_user
  layout :layout_by_resource

 private

  def validate_company_ownership
    if user_signed_in?
      @company = Company.find(current_user.company.id)
      
      if @company.id.to_s != params[:company_id].to_s
        redirect_to company_url(current_user.company.id)
      end
    else
      authenticate_user!
    end
  
      #end
    #a = current_user.name
    # if  current_user.company_id.to_s != params[:company_id].to_s
    #   redirect_to root_path #unauthorized access, because this product is owned by another company
    # end
  end

   def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
