class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  layout "admin"

  protected

  def check_admin
    redirect_to root_path, alert: 'У вас нет прав доступа' unless current_user.admin?
  end
  
end
