class User < ApplicationRecord
  has_secure_password
  
  def admin?
    self.role == 'admin'
  end

  has_many :books

  validates :email, presence: true
  validates :password_digest, presence: true
end