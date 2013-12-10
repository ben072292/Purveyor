class ApplicationController < ActionController::Base

  protect_from_forgery
  ## before_filter :authorize
  include SessionsHelper

private

  def authorize  
    unless signed_in?
      session[:original_url] = request.url
      redirect_to :controller => "sessions", :action=>"new"
    return false
    end
  end

  def is_farmer?
    unless !farmer?
      render 'restricted/show'
    return false
    end
  end

  def is_customer?
    unless !customer?
       render 'restricted/show'
    return false
    end
  end

   def is_admin?
    unless admin?
       render 'restricted/show'
    return false
    end
  end

end
