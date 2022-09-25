class Public::EndUsersController < ApplicationController
  before_action :authenticate_end_user!, except: [:top, :about]
  before_action :ensure_correct_end_user, only: [:update,:edit, :destroy]
  before_action :ensure_guest_end_user, only: [:edit]


  def show
    @end_user = EndUser.find(params[:id])
    @posts = @end_user.posts
    @post = Post.new
    @guestusername = current_end_user.name
  end

  def index
    @end_users = EndUser.all
    @post = Post.new
    @end_user = current_end_user

  end

  def edit
    @end_user = EndUser.find(params[:id])
    if @end_user == current_end_user
    render :edit
    else
    redirect_to end_user_path(current_end_user)
    end
  end

  def update
       @end_user = EndUser.find(params[:id])
       @end_user.update(end_user_params)
    if @end_user.save
      redirect_to end_user_path(@end_user.id), notice: "会員情報を更新しました。"
    else
       render :edit
    end
  end

  def unsubscribe
    @end_user = current_end_user
  end

  def withdraw
    @end_user.update(is_active: false)
    reset_session
    flash[:notice] = "　　退会処理を実行しました。"
    redirect_to root_path
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
