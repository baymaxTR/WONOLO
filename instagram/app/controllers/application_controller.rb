class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authenticate_user!, only: :show

  private
  def authenticate_user
    redirect_to new_user_registration_url unless user_signed_in?
  end
end
