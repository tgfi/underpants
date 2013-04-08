class AppAdminController < ApplicationController

  before_filter :authenticate_user!
  before_filter :authorize_for_app_admin

  protect_from_forgery

  inherit_resources

end
