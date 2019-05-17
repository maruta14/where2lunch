class EateriesController < ApplicationController
 before_action :login_required
  def create
    eatery = Eatery.new(eatery_params)
    eatery.save
    flash[:success] = "#{eatery.name}を追加しました"
    redirect_to root_path
  end

private

  def eatery_params
    params.require(:eatery).permit(:name)
  end


  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

  def login_required
    redirect_to login_path unless current_user
  end

end
