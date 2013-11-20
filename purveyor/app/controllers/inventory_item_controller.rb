class InventoryItemController < ApplicationController
 def create
   @current = item.find(params[:current_id])
   @cost = @current.costs.create(params[:cost].permit(:fixnum))
end