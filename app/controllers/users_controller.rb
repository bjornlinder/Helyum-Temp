class UsersController < ApplicationController

  def index
    @user = User.new(user_params)
    @email = Email.new

    if @user.save
      redirect_to root_path
      flash[:notice] = "Thank you #{@user.first_name}! We will let you know when we launch."
    # Username '#{@user.username}' has been reserved."
    else
      render :join
    end
  end

  def new
    @user = User.new
    @email = Email.new
  end

  def join
    @user = User.new
  end
  
  # def create
  #   @user = User.new(user_params)
  #   @email = Email.new
  #
  #   if @user.save
  #     redirect_to root_path
  #     flash[:notice] = "Thank you #{@user.first_name}! Username '#{@user.username}' has been reserved."
  #   else
  #     render :join
  #   end
  # end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :username, :suggestions)
    end
end
