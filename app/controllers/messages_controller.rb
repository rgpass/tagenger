class MessagesController < ApplicationController
	# TODO: Add before_save test for signed_in
	# TODO: Add test for correct_user
	# before_action :signed_in_user, only: [:create, :destroy]
	before_action :correct_user, only: :destroy

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
		@message.destroy
		redirect_to root_url
	end

	private

		def message_params
			params.require(:message).permit(:tag_number, :content, :user_id)
		end

		def correct_user
			@message = current_user.messages.find_by(id: params[:id])
			redirect_to root_url if @message.nil?
		end

		# TODO: Add message_owner
		# TODO: Add admin_user
end