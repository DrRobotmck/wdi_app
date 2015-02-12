class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :instructor?, :current_client

  def current_client
  	if session[:instructor] && session[:client_id]
  		return Instructor.find(session[:client_id])
  	elsif session[:client_id]
  		return Student.find(session[:client_id])
  	end
  end

  def instructor?
  	redirect_to ( current_client || root_path ) unless session[:instructor]
  end
end
