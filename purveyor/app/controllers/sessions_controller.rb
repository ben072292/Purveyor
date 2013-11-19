class SessionsController < ApplicationController

  skip_before_filter :authorize

  def new
  end

  def create
    @admin = Admin.find_by(username: params[:session][:username])
    if @admin && @admin.authenticate(params[:session][:password])
      sign_in @admin
      redirect_to root_url
    else
      flash.keep
      render 'new'
    end
  end
 
  def destroy
    sign_out
    redirect_to root_url
      sign_in admin
  end
end
