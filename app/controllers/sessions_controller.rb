class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #log in user and redirect to user#show
    else
      flash[:danger] = 'Invalid email and/or password'
      render 'new'
    end
  end

  def destroy
  end
end
