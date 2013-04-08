class Admin::AccountsController < AppAdminController
  
  def collection
    @accounts ||= Account.paginate :page => (params[:page].to_i > 0 ? params[:page].to_i : 1)
  end
  
end