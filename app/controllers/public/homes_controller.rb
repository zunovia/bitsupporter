class Public::HomesController < ApplicationController
  before_action :authenticate_end_user!, except: [:top, :about]
  before_action :ensure_guest_end_user, only: [:edit]

  def top

  end



  def create
    @post = Post.new(post_params)
    @post.end_user_id = current_end_user.id
    if @post.save
      redirect_to post_path(@post), notice: "投稿完了しました。"
    else
      render 'show'
    end
  end


    private

  def end_user_params
    params.require(:end_user).permit(:name, :express, :disorder, :age, :sex, :prefecture, :want, :profile_image)
  end

  def ensure_correct_end_user
    @end_user = current_end_user
    unless @end_user == current_end_user
      redirect_to end_user_path(current_end_user)
    end
  end

  def ensure_guest_end_user
    @end_user = EndUser.find(params[:id])
    if @end_user.name == "guestuser"
      redirect_to end_users_path() , notice: 'ゲストユーザーはプロフィール編集画面へ遷移できません。'
    end
  end


end
