class HomeController < ApplicationController
  def index
    @promotions = Promotion.all.order("created_at desc").limit(6)
  end

  def manage_user
    @users = User.where("id <> ?", current_user.id).order("id")
  end

  def change_user_role

    if params[:role].to_i == 4
      @old_role = User.find(params[:id]).Role_id
      User.find(params[:id]).update_attribute('old_role', @old_role)
      User.find(params[:id]).update_attribute('Role_id', params[:role])
    elsif params[:role].to_i == 3 #unban user
      @old_role = User.find(params[:id]).old_role
      User.find(params[:id]).update_attribute('Role_id', @old_role)
    elsif params[:role].to_i == 2 #verify
      User.find(params[:id]).update_attribute('Role_id', params[:role])
    end


    redirect_to manage_user_path, notice: @notice
  end

  def delete_user
    User.find(params[:id]).destroy
    redirect_to manage_user_path
  end
end
