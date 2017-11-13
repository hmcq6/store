module UsersHelper
  def user_is_admin?
    redirect_to root_path unless current_user.try(:is_admin)
  end
end
