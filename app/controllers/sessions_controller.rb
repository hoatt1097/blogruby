class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: params[:session][:username].downcase
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Login success"
      log_in user
      redirect_to '/'
    else
      redirect_to login_url, :alert => "Invalid username/password"
    end
  end

  def destroy
  end
end