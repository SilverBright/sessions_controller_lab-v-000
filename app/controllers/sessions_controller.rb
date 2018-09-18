class SessionsController < ActionController::Base

  def new 
  end
  
  def create
    if session[:username] == nil
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
      
    end
  end
  
  def destroy
    session.delete :username
  end
  
end