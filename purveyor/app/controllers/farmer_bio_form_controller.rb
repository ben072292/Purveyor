class FarmerBioFormController < ApplicationController

  require '/app/views/form/index.html.erb'

  def new
  end

  def create
    render text: params[:farmer_bio_form].inspect
  end

end
