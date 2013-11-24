class Inventory< ActiveRecord::Base
  has_many :items
 
  validates :name, presence: true,
  length: {minimum: 5}
  
  validates :quantity, presence: true
  
  validates :unit, presence: true,
  length: {minimum: 1}
  
  validates :growingPractice, presence: true
  
  validates :expirationDate, presence: true
end
