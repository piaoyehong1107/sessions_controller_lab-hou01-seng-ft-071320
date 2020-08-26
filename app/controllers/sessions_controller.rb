class SessionsController < ApplicationController
  def new
  end
  def create
    if params[:name] != ''
    session[:name]=params[:name]
      redirect_to '/'
    else
      redirect_to new
  end 
  def destroy
    session.delete :name
  end
end
