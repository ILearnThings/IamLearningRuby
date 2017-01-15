class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email], password: params[:session][:password])
    if user 
      session[:current_user_id] = user.id
      session[:current_company_id] = user.company_id
      redirect_to company_url(user.company)
    else
      flash.now[:error] = "Invalid email or password!"
      render 'new'
    end
  end
end
