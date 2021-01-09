class SessionsController < ApplicationController
  skip_before_action :login_required

  def new
  end

  def create 
    user = User.find_by(email: session_params[:email])
    session[:user_id] = user.id
    redirect_to root_path, notice: 'ログインしました。'
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'ログアウトしました。'
  end
  
  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end