class SessionsController < Devise::SessionsController

  protected

  def after_sign_in_path_for(resource)
    if current_user.Role_id == 4
      sign_out resource
      flash[:notice] = "This account is banned. Please contact admin."
      new_user_session_path
    else
      super
    end
  end

end
