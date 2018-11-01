class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include Pundit

  after_action :verify_authorized, except: [:index, :board, :new, :create], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index, :board], unless: :skip_pundit?
  layout :layout_by_resource

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
