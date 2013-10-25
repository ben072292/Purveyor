class FarmerBioFormController < ApplicationController

  def new
  end

  def create
    render text: params[:farmer_bio_form].inspect
  end

end
