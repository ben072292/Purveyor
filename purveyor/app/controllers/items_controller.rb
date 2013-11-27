class ItemsController < ApplicationController
  def create
    @inventory = Inventory.find(params[:inventory_id])
    @item = 
      @inventory.items.create(params[:item].permit(:name, :cost, :quantity, :unit, :expirationDate, :growingPractice))
    redirect_to inventory_path(@inventory)
  end
end
