class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token
	validates :first_name, presence: true, 
												 length: { maximum: 50 }
	validates :last_initial, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, presence: true, 
										format: { with: VALID_EMAIL_REGEX }, 
										uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6}
	validates :tndcheck, presence: true

	# has_many :user_tags, foreign_key: "tag_id"
	# has_many :tags, through: :user_tags #, source: :tags # TODO: Test to see if source is necessary

	has_many :user_tags
	has_many :tags, through: :user_tags

	def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
