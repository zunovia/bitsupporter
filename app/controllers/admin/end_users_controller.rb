class Admin::EndUsersController < ApplicationController
before_action :authenticate_admin!
 before_action :ensure_correct_admin, only: [:update,:edit,:destroy]


  def new
   @post = Post.new
  end

  def show
    @end_user = EndUser.find(params[:id])
    @posts = @end_user.posts
    @post = Post.new
  end

  def index
    @end_users = EndUser.all
    @post = Post.new
    @end_user = current_end_user
  end

  def edit

  end

  def update
    @end_user = end_user.find(params[:id])
    @end_user.update(end_user_params)
   if @end_user.save
      flash[:notice]='You have updated end_user successfully.'
      redirect_to end_user_path(@end_user.id)
   else
      render :edit
   end
  end

  private

  def end_user_params
    params.require(:end_user).permit(:name, :introduction, :profile_image)
  end

  def ensure_correct_end_user
    @admin = admin.find(params[:id])
    unless @admin == current_admin
      redirect_to admin_end_users_path(current_admin)
    end
  end


end
