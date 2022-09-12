class Public::EndUsersController < ApplicationController
  before_action :authenticate_end_user!
  before_action :ensure_correct_end_user, only: [:edit, :update,:destroy]

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
    @end_user = EndUser.find(params[:id])
    if @end_user == current_end_user
    render :edit
    else
    redirect_to user_page_path(current_end_user)
    end
  end

  def update
       @end_user = EndUser.find(params[:id])
    if @end_user.save(end_user_params)
      redirect_to user_page_path(@end_user), notice: "You have updated end_user successfully."
    else
      render "edit"
    end
  end

  private

  def end_user_params
    params.require(:end_user).permit(:name, :express, :disorder, :age, :sex, :prefecture, :want, :profile_image)
  end

  def ensure_correct_end_user
    @end_user = EndUser.find(params[:id])
    unless @end_user == current_end_user
      redirect_to user_page_path(current_end_user)
    end
  end


end
