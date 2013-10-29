class CustomerformController < ApplicationController

  require '/app/views/form/index.html.erb'

  def new
  end

  def create
    render text: params[:customerform].inspect
  end
end
