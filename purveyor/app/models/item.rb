class Item < ActiveRecord::Base
  belongs_to :Inventory
  @current = Item.new(itemArray)
  @current.save
  redirect_to @current
    private

end
