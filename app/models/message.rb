class Message < ActiveRecord::Base
	belongs_to :user
	belongs_to :tag

	attr_accessor :tag_state
	validates :tag_number, presence: true
	validates :content, presence: true
	# validates :tag_state, presence: true
end
