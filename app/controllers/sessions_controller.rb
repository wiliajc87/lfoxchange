class SessionsController < ApplicationController
  skip_before_action :current_user

  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(current_user)
    else
      flash[:incorrect_log_in] = "Incorrect name or password"
      render 'sessions/new', status: 401
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end
end