class User < ActiveRecord::Base
  validates :username , presence: true , uniqueness: {case_sensitive: false},
  length: {minimum: 4 , maximum: 10}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email , presence: true , uniqueness: { case_sensitive: false } , length: {minimum: 5 , maximum: 15 },
  format: { with: VALID_EMAIL_REGEX }
  
  
end