class ApplicationController < ActionController::Base
  # skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to request.referer || root_path
  end

end
