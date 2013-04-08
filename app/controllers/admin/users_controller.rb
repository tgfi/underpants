class Admin::UsersController < AppAdminController
  
  def collection
    @users ||= User.paginate :page => (params[:page].to_i > 0 ? params[:page].to_i : 1)
  end
end