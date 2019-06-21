class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to user
        # redirect_back_or user
      else
        flash.now[:danger] = 'ログインに失敗しました'
        render 'new'
      end
  end

  def destroy
    log_out
    redirect_to root_url
  end


 private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
