class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.role == 'admin'
      session[:user_id] = user.id
      redirect_to job_offers_path
    else
      redirect_to root_path, alert: 'No autorizado'    
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end
