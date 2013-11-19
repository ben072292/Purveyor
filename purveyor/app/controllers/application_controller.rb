class ApplicationController < ActionController::Base
#  before_action :session.model.id = session.session_id
  protect_from_forgery
  include SessionsHelper
end
