class User < ApplicationRecord
  has_many :articles
  validates :username,  presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 4, maximum: 15}
            VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
             uniqueness: {case_sensitive: false},
             format: {with: VALID_EMAIL_REGEX}
  
  has_secure_password
end
