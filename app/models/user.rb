class User < ActiveRecord::Base
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_initial, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :tag, presence: true
	has_secure_password
end
