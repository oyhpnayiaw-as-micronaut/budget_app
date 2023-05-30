class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :custom_authenticate_user!, redirect_to: :splash_path, unless: :splash_controller?

  private

  def custom_authenticate_user!
    return if user_signed_in?

    return if !user_signed_in? && request.path.split('/')[1] == 'users'

    redirect_to :splash, notice: ''
  end

  def splash_controller?
    controller_name == 'splash'
  end
end
