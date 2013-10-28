class CustomerformController < ApplicationController

  require '/cs390/cs390/purveyor/app/views/form/index.html.erb'

  def new
  end

  def create
    render text: params[:customerform].inspect
  end
end
