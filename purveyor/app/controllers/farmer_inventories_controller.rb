class FarmerInventoriesController < ApplicationController
  def create
    @farmer = Farmer.find(params[:name_id])
    @farmer_inventory = @farmer.farmer_inventories.create(params[:farmer_inventory].permit(:name))
    redirect_to farmer_path(@farmer)
  end
  
  def destroy
    @farmer = Farmer.find(params[:name_id])
    @farmer_inventory = FarmerInventory.find(params[:id])
    @farmer_inventory.destroy
    redirect_to farmer_path(@farmer)
  end
end
