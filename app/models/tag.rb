class Tag < ActiveRecord::Base
	VALID_TAG_REGEX = /([A-Z]{2}[A-Z0-9]{3,10})/i
	validates :tag_number, presence: true, format: { with: VALID_TAG_REGEX }, length: { maximum: 10 }
<<<<<<< HEAD
	has_many :user_tags
	
=======

	# has_many :user_tags, foreign_key: "user_id"#, class_name: "UserTag"
	# has_many :users, through: :user_tags #, source: :users

	has_many :user_tags
	has_many :users, through: :user_tags
>>>>>>> b86b503a7cb88648bea7237e721540dcb5d78eec
end
