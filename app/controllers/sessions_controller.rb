class SessionsController < ApplicationController
  def new
  end
  def create
    if params[:name] != ''
      session[:name]=params[:name]
      redirect_to '/'
    elsif params[:name] == nil
      redirect_to '/login'
    end
  end 
  def destroy
    session.delete :name
  end
end
