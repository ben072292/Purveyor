class ApplicationController < ActionController::Base

  protect_from_forgery
  #before_filter :authorize
  include SessionsHelper

private

  def authorize
    unless Admin.find_by id:(session[:id])
     session[:original_url] = request.url
      redirect_to :controller => "sessions", :action=>"new"
      flash.now[:error] = 'Invalid username/password combination.'
     return false
    end
  end
end
