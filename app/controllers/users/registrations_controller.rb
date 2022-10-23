class Users::RegistrationsController < Devise::RegistrationsController
# class RegistrationsController < Devise::RegistrationsController

  protected
  # def configure_permitted_parameters
  #   # devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :birthday, :image, :image_cache])
  #   # devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :birthday, :image, :image_cache])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute, :name, :email, :gender, :birthday, :image, :image_cache, :password, :password_confirmation, :current_password])
  #   # attribute name email prefectures birthday sex image image_cache introduction password password_confirmation current_password
  # end
  
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def after_update_path_for(resource)
    user_path(resource.id)
  end

end