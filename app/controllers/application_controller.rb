class ApplicationController < ActionController::Base
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  private
    def user_not_authorized
      flash[:warning] = "Sorry, you can not peform this action."
      redirect_to(request.referrer || root_path)
    end
end