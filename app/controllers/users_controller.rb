class UsersController < ApplicationController

  def index
  end

  helper_method :resource_name, :resource, :devise_mapping

  def resource_name
    :user
  end
  
  def resource
    @resource ||= User.new
  end
  
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
    end
end
