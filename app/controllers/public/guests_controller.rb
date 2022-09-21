class Public::GuestsController < ApplicationController



  def guest_sign_in
    end_user = EndUser.find_or_create_by!(name: 'guestuser' ,email: 'guest@example.com') do |end_user|
      end_user.password = SecureRandom.urlsafe_base64
      end_user.name = "guestuser"
      end_user.disorder = "guestuser"
    end
    sign_in end_user
    redirect_to end_user_path(current_end_user), notice: '　　ゲストユーザーでログインしました。'
  end



end
