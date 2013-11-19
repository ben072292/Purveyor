class NewUser < ActiveRecord::Base
  before_save { self.username = username.downcase }
  validates :username, presence: true, length: { maximum: 50 }
  validates :password, presence: true, uniqueness: { case_sensitive: true }
  has_secure_password
end
