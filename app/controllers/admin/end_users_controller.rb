class Admin::EndUsersController < ApplicationController
before_action :authenticate_end_user!
 before_action :ensure_correct_end_user, only: [:update,:edit,:destroy]


  def new
   @post = post.new
  end

  def show
    @end_user = end_user.find(params[:id])
    @posts = @end_user.posts
    @post = post.new
  end

  def index
    @end_end_users = end_user.all
    @post = post.new
    @end_user = current_end_user
  end

  def edit
    @end_user = end_user.find(params[:id])
    if @end_user == current_end_user
      render :edit
    else
      redirect_to end_user_path(current_end_user)
    end
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
    @end_user = end_user.find(params[:id])
    unless @end_user == current_end_user
      redirect_to end_user_path(current_end_user)
    end
  end


end
