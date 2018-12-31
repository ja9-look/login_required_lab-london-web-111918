class SessionsController < ApplicationController

  def show
    @session = Session.find(params[:id])
  end

  def create
    session[:name] = params[:name]
      if session[:name] == nil || session[:name].length == 0
        redirect_to sessions_new_path
      else
        redirect_to root_path
      end
  end

  def destroy
    session.delete(:name)
    redirect_to login_path
  end

end
