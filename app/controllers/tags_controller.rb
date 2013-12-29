class TagsController < ApplicationController

	def new
		@tag = Tag.new
	end

	def create
		if tag_exist?
			@tag = Tag.find_by_tag_number(tag_params)
		else
			@tag = Tag.create(tag_params)
		end
		# create connection
		current_user.user_tags.create(tag_id: @tag.id)
		redirect_to current_user
	end

	def remove_user_tag
		@user = current_user
		@tag = Tag.find(params[:id])
		@user.user_tags.find_by(user_id: @user.id, tag_id: @tag.id).destroy
		flash[:success] = "Tag removed."
		redirect_to current_user
	end

	private

		def tag_params
			params.require(:tag).permit(:tag_number)
		end

		def tag_exist?
			# Tag.find_by_tag_number(tag_params)
			Tag.find_by_tag_number(params[:tag_number])
		end

end