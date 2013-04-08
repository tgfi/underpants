class ApplicationController < ActionController::Base
  layout :get_layout

  protect_from_forgery


  # devise overrides
  def after_sign_in_path_for(resource)
    if resource.admin?
      admin_root_url(:subdomain => "admin")        
    else
      root_url(:subdomain => "www")
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_url(:subdomain => false)
  end

    
  def authorize_for_app_admin
    unless current_user.admin?
      flash[:notice] = "You do not have permission to access the requested resource."
      redirect_to "/admin"
    end      
  end


  def get_layout
    if ['passwords', 'sessions', 'invitations'].include?(controller_name) then
      'public'
    else
      'application'
    end
  end
end
