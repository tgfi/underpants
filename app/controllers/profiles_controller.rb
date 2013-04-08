class ProfilesController < ApplicationController

  before_filter :authenticate_user!

  inherit_resources

  defaults :singleton => true, :resource_class => User, :instance_name => 'user'
  actions :edit, :update, :show

  
  protected
  
    def resource
      @user ||= current_user
    end

end
