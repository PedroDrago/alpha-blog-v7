class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :articles, dependent: :destroy
  has_secure_password

  validates :username, 
            presence: true, 
            uniqueness: true , 
            length: { minimum: 2, maximum: 15 }
EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, 
            presence: true, 
            uniqueness: { case_sensitive: false },
            length: { minimum: 9, maximum: 150 },
            format: { with: EMAIL_REGEX }
end
