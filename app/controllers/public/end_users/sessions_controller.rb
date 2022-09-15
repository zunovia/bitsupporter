class EndUsers::SessionsController < Devise::SessionsController
  def guest_sign_in
    end_user = EndUser.guest
    sign_in end_user
    redirect_to end_user_path(end_user), notice: 'guestuserでログインしました。'
  end
end