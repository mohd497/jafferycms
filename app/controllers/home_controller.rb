class HomeController < ApplicationController

  def index

  end

  def create_admin
    asd = Useradmin.where(username: params[:username], password: params[:password]).first
    if asd
      redirect_to user_path
    else
      flash[:alert] = "Username or password incorrect!"
      render :index
    end
  end

  def user

  end

end
