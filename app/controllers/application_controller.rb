class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user.careers.present?  
      user_path(resource.id) 
    else 
      new_career_path(resource.id) 
    end 
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :birthday, :image, :image_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :gender, :birthday, :image, :image_cache])
  end

end
