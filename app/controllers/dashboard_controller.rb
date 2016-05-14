class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    # if user loggedin
    #   render loggedinuser
    # else 
    #   homepage view
  end

  helper_method :logged_in_user
  def logged_in_user
  end

end