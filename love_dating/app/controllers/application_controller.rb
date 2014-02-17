class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:email, :password, :password_confirmation, profile_attributes: [:user_id, :gender, :looking_for, :date_of_birth])
      end 
    end

    def is_user_logged_in?
      current_user.nil?
    end

    def check_profile_updated
      unless is_user_logged_in?
        profile = current_user.profile
        redirect_to edit_profile_path(profile.id), notice: "Please complete your profile" unless profile.first_name? and profile.last_name?
      end  
    end
end
