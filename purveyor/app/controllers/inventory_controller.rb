class InventoryController < ApplicationController

def create
  @current = inventory.new(inventoryParam)
  @current.save
  redirect_to @current
end

def edit
  @current= inventory.find(params[:id])
end

def destroy
  @current= inventory.find(params[:id])
  @current.destroy
 
  redirect_to inventory_path
end

  private
  def inventoryParam
    params.require(:inventoryArray).permit(:inventoryItem)
  end
end