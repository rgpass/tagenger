class UserTag < ActiveRecord::Base
	belongs_to :user
	belongs_to :tag

	# TODO: Uncomment after reverse relationship done
	# validates :user_id, presence: true
	# validates :tag_id, presence: true	
end
