class SessionsController < ApplicationController
  #before_action :prevent_logged_in_user_access, except: :destroy
  #before_action :prevent_unauthorized_user_access, only: :destroy

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in'
    else
      flash.now[:notice] = 'Invalid username / password combination'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sign_in'
  end

end
