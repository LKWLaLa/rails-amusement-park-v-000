class SessionsController < ApplicationController

  def new
  end

  def create
    if @user = User.find_by(name: params[:name])
      session[:user_id] = @user.id  
    else
      redirect_to :new, alert: "Please enter a valid user name, or create an account."
    end
  end

  def destroy
    session.clear
  end


end