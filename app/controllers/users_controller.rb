class UsersController < ApplicationController
  def show
      @user = User.find(params[:id])
      # debugger
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #succes
    else
      #failer
     render 'new'
   end
   
   private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
  end
end
