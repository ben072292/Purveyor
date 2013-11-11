class SessionsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by(username: params[:session][:username])
    if admin && admin.authenticate(params[:session][:password])
      sign_in admin
      redirect_to admin
    else
      flash.now[:error] = 'Invalid username/password combination'
      render 'new'
    end
  end
 
  def destroy
    sign_out
    redirect_to root_url
  end
end