class SessionsController < ApplicationController
  def new
    
  end
  
  def create 
    session[:name] = params[:name]
    if session[:name] != nil 
      redirect "/"
    else 
      redirect "/login"
    end
    
  end
  
  def destroy
    session.delete :name
  end
  
end
