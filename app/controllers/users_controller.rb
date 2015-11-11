class UsersController < ApplicationController
  def index

    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to_root_url
    else render :action => "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:usermane,:email,:password,:confirmation)
end
end
