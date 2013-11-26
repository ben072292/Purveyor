class SessionsController < ApplicationController

  skip_before_filter :authorize

  def new
    render :layout => false
  end

  def create
    @admin = Admin.find_by(username: params[:session][:username])
    if @admin && @admin.authenticate(params[:session][:password])
      sign_in @admin
    else
      flash.now[:error] = "Invalid Username/Password Combination"
      flash.keep
    end
    redirect_to root_url
  end
 
  def destroy
    sign_out
    redirect_to root_url
  end
end
