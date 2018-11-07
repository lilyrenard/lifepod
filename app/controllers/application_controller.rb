class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit

  after_action :verify_authorized, except: [:index, :board, :new, :create], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index, :board], unless: :skip_pundit?
  layout :layout_by_resource

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birth_date, :profile_picture, :profile_picture_cache])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :birth_date, :profile_picture, :profile_picture_cache])
    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :birth_date(3i), :birth_date(2i), :birth_date(1i), :profile_picture, :profile_picture_cache])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end


#
