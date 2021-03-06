class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def new
    if current_user
      redirect_to user_path(current_user.id)
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Tagenger!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @tag = Tag.new
    @user = User.find(params[:id])
    @received_messages = []
    @user.tags.each do |tag|
      @received_messages += Message.find_all_by_tag_number(tag.tag_number)
    end
    # Sorts @received_messages by created_at date
    @received_messages.sort! {|a,b| b.created_at <=> a.created_at }
    @sent_messages = @user.messages
    # Another way to sort messages. sort! wasn't working for some reason
    @sent_messages = @sent_messages.order("created_at DESC")
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_initial, :email, :password,
                                   :password_confirmation, :tndcheck)
    end

    # before filters

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
