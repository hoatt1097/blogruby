class UsersController < ApplicationController
    def index
    end
  
    def new
      @user = User.new
    end

    def show
        @user = User.find_by id: params[:id]
    end
  
    def create
      @user = User.new user_params
      respond_to do |format|
        if @user.save
          format.html { redirect_to users_path, notice: 'User was successfully created.' }
        else
          format.html { render :new}
        end
      end
    end
  
    private
    def user_params
      params.require(:user).permit :username, :password, :password_confirmation, :email
    end
end
