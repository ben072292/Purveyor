class Inventory< ActiveRecord::Base
  has_many :items
 
  validates :name, presence: true,
  length: {minimum: 5}
  
  validates :cost, presence: true

  validates :quantity, presence: true
  
  validates :unit, presence: true,
  length: {minimum: 1}
  
  validates :expirationDate, presence: true

  validates :growingPractice, presence: true

end
