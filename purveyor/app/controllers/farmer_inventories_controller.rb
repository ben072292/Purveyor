class FarmerInventoriesController < ApplicationController
  def create
    @farmer = Farmer.find(params[:name_id])
    @farmer_inventory = @farmer.farmer_inventories.create(params[:farmer_inventory].permit(:name))
    redirect_to farmer_path(@farmer)
  end
end
