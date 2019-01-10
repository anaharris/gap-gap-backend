class User < ApplicationRecord
  has_many :conversations, through: :user_conversation
  has_secure_password
  validates: :username, uniqueness: {case_sensitive: false}
end
