class EmailsController < ApplicationController
  
  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)

    if @email.save
      redirect_to root_path
      flash[:alert] = "Thank you! We will keep you updated."
    else
      redirect_to root_path
      flash[:alert] = "Email already entered or is invalid."
    end
  end

  private

    def email_params
      params.require(:email).permit(:email)
    end
end
