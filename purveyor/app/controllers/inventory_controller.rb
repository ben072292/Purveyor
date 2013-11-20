class InventoryController < ApplicationController

  def index
    @inventory_list = Inventory.all
  end

  def new
    @inventory = Inventory.new
  end
  
  def create
    @inventory = Inventory.new(params[ :inventory].permit(:cost, :quantity, :expirationDate, :growingPractice, :name))
    if @inventory.save
    redirect_to @inventory
    else
      render 'new'
    end
  end
  
  def edit
    @inventory = Inventory.find(params[:id])
  end
  
  def update
    @inventory = Inventory.find(params[:id])

    if @inventory.update(params[:inventory].permit(:cost, :quantity, :expirationDate, :growingPractice, :name))
      redirect_to @inventory
    else
      render 'edit'
    end
  end
  
  def show
    @inventory = Inventory.find(params[:id])
  end

  def destroy
    @inventory= Inventory.find(params[:id])
    @inventory.destroy
    
    redirect_to inventory_path
  end
  
end
