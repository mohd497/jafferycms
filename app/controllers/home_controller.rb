class HomeController < ApplicationController

  def index
    if session[:admin] == "accepted"
      redirect_to customers_path
    end
  end

  def logout
    session[:admin] = nil
    session[:level] = nil
    redirect_to root_path
  end

  def create_admin
    asd = Useradmin.where(username: params[:username], password: params[:password]).first
    if asd
      session[:admin] = "accepted"

      if asd.level == 1
        session[:level] = "level1"
      elsif asd.level == 2
        session[:level] = "level2"
      elsif asd.level == 3
        session[:level] = "level3"
      end

      redirect_to customers_path
    else
      flash[:alert] = "Username or password incorrect!"
      render :index
    end
  end

  def user
    if session[:admin] == "accepted"

    else
      redirect_to root_path
    end
  end

  def new_user
    if session[:admin] == "accepted"

    else
      redirect_to root_path
    end
  end

  def create_user
    a = User.new(first_name: params[:first_name], last_name: params[:last_name],
                 email: params[:email], phone_number: params[:phone_number], store_number: params[:store_number],
                 file: params[:file])
    a.save!
  end

end
