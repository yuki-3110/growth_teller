class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(resource.id)
  end

  # アカウント登録後、経歴登録に遷移
  # def after_sign_in_path_for(resource)
  #   if current_user.movings.present?  
  #     user_path(resource.id) 
  #   else 
  #     new_moving_path(resource.id) 
  #   end 
  # end
  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :birthday, :image, :image_cache])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:name, :gender, :birthday, :image, :image_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :gender, :birthday, :image, :image_cache])
    # attribute name email prefectures birthday sex image image_cache introduction password password_confirmation current_password
  end

  
end
