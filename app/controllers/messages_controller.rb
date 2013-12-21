# TODO: Populate with new
class MessagesController < ApplicationController
	# TODO: Add before_save test for signed_in
	# TODO: Add before_save test for correct_user
	def new
		@message = Message.new
		@user = current_user
	end

	def create
		@message = Message.new(message_params)
		@message.user_id = current_user.id
		@user = current_user
		if @message.save
      # sign_in @user
      flash[:success] = "Message sent!"
      redirect_to @user
    else
      render 'new'
    end
	end

	def destroy
	end

	private

		def message_params
			params.require(:message).permit(:tag_number, :content, :user_id)
		end

		# TODO: Add correct_user
		# TODO: Add message_owner
		# TODO: Add admin_user
end