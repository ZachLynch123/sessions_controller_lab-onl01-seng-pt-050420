class SessionsController < ApplicationController
  def new
    
  end
  
  def create 
    session[:name] = params[:username]
    redirect_to '/'
    
  end
  
  def destroy
    session.delete :name
  end
  
end
