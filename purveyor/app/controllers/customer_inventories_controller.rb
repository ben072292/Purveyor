class CustomerInventoriesController < ApplicationController
  def create
      @customer = Customer.find(params[:customer_id])
      @customer_inventory = @customer.custormer_inventories.create(params[:customer_inventory].permit(:name))
      redirect_to customer_path(@customer)
    end
    
  def destroy
    @customer = Customer.find(params[:name_id])
    @customer_inventory = CustomerInventory.find(params[:id])
    @customer_inventory.destroy
    redirect_to customer_path(@customer)
  end
end
