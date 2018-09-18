class SessionsController < ActionController::Base

  def new 
  end
  
  def create
    # session[:username] = params[:username]
    if session[:username] == nil
      redirect_to '/login'
    else
      session[:username] = params[:username]
      redirect_to '/'
      
    end
  end
  
  def destroy
    session.delete :username
  end
  
end