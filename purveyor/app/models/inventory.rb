class Inventory< ActiveRecord::Base
  has_many :Items
  
  def create
  @current = inventoryArray.new(itemArray)
  @current.save
  redirect_to @current
  end
    private
  def itemArray
    params.require().permit(:inventory)
end