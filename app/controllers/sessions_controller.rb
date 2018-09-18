class SessionsController < ActionController::Base

  def new 
  end
  
  def create
    session[:username] = params[:username]
    if session[:username] == ""
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end
  
  def destroy
    session.delete :username
  end
  
end