class UserTag < ActiveRecord::Base
	belongs_to :user
	belongs_to :tag
<<<<<<< HEAD
end
=======

	# TODO: Uncomment after reverse relationship done
	# validates :user_id, presence: true
	# validates :tag_id, presence: true	
end
>>>>>>> b86b503a7cb88648bea7237e721540dcb5d78eec
