class User < ApplicationRecord
  # Include the BCrypt module for password hashing
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :tweets, dependent: :destroy
  # Validations
  validates :username, presence: true, length: { minimum: 3, maximum: 64 }, uniqueness: true
  validates :email, presence: true, length: { minimum: 5, maximum: 500 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8, maximum: 64 }
  

end
