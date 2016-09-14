class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
  # the long way...
  #   if session[:user_id]
  #     unless @current_user
  #       @current_user = User.find(session[:user_id])
  #     end
  #     @current_user
  #   end
  # end
  # the short way
  @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
