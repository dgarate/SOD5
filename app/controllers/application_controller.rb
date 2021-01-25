class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
    before_action :authenticate_user!
  
  protected

  rescue_from CanCan::AccessDenied do
    flash[:error] = 'Access denied! ==> Returned back to HOME page'
    redirect_to root_url
  end

  def after_sign_in_path_for(resource)
    users_path
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_id])
  end
end

