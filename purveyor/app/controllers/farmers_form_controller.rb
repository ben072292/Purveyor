class FarmersFormController < ApplicationController

  def index
    render :partial => "farmers_form/farmers_form"
  end

  def create
    render text: params[ :farmers_form].inspect
    @farmer = Farmer.new(farmer_params)
  end

  def new
    @farmer = Farmer.new
  end

  def edit
  end

  def show
  end


  private
  def farmer_params
    params.require(:farmer).permit(:Bio, :Location, :Picture)
  end

end
