class Inventory< ActiveRecord::Base
  has_many :Items
  
  def create
  @current = Inventory.new(item)
  @current.save
  redirect_to @current
  end

    private
  def item
    params.require().permit(:inventory)
  end
end
