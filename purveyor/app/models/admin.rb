class Admin < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :username, presence: true, length: { maximum: 50 }
  validates :email, presence:   true,
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 2 }

  def Admin.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Admin.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end


  private
    
    def create_remember_token
      self.remember_token = Admin.encrypt(Admin.new_remember_token)
    end
end
