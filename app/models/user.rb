

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :first_name, :last_name, presence: true
  validates :password, length: {minimum: 6}
  
  def self.authenticate_with_credentials(email, password)
    user = User.find_by('lower(email) = ?', email.strip.downcase)
    return user if user && user.authenticate(password)
    nil
  end
end