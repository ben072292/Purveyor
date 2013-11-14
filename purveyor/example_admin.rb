class Admin
  attr_accessor :username, :password

  def initialize(attributes = {})
    @username = attributes[:username]
    @password = attributes[:password]
  end

end
