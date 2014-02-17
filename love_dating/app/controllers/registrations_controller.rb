class RegistrationsController < Devise::RegistrationsController

  def new
    resource = build_resource
    resource.build_profile
    respond_with self.resource
  end

  def create
    super
  end

  private

  def user_params
    devise_parameter_sanitizer.permit(profile_attributes: [:user_id, :gender, :looking_for, :date_of_birth])
  end
end
