class FarmersFormController < ApplicationController

  def index
    render :partial => "farmers_form/farmers_form"
  end

  def create
    render text: params[ :farmers_form].inspect
  end

  def new
  end

  def show
  end


  private
  def farmer_params
    params.require(:farmer).permit(:Bio, :Location, :Picture)
  end

end
