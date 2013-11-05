class FarmersFormController < ApplicationController

  def new
  end

  def create
    @farmer = Farmer.new(post_params)

    @farmer.save
    redirect_to @farmer
  end

  def index
    
  end


  private
  def farmer_params
    params.require(:farmer).permit(:Bio, :Location, :Picture)
  end

end
