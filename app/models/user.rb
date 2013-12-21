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

	has_many :user_tags
	has_many :tags, through: :user_tags

	has_many :messages


	def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  # Call this with current_user.add_tag!(tag_number)
  # TODO: Determine if this should be add_tag! and create!
  def add_tag(tag_number)
  	user_tags.create(tag_id: Tag.find_by_tag_number(tag_number).id)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
