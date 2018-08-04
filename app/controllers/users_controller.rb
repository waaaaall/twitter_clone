class UsersController < ApplicationController
  def index
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end


  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :username ,:about, :location, :website, :avator, :cover)
  end

end
