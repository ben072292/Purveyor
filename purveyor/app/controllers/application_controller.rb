class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :authorize
  include SessionsHelper

private

  def authorize 
    unless signed_in?
      session[:original_url] = request.url
      redirect_to :controller => "sessions", :action=>"new"
 #     flash.n  ow[:error] = 'Invalid username/password combination.'
    return false
    end
  end
end
