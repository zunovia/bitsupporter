class Public::PostsController < ApplicationController
  before_action :authenticate_end_user!
  before_action :ensure_correct_end_user, only: [:edit, :update, :destroy]

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
    @posts = Post.all
    @end_user = EndUser.find(params[:id])
    @is_post_show = true
    #@guestusername = current_end_user.name
  end

  def index
    @posts = Post.all
    @post = Post.new
    @end_user = current_end_user
    @guestusername = current_end_user.name
  end

  def create
    @post = Post.new(post_params)
    @post.score = Language.get_data(post_params[:body])
    @post.end_user_id = current_end_user.id
    @guestusername = current_end_user.name
    if @post.save
      redirect_to post_path(@post), notice: "投稿完了しました。"
    else
      @posts = Post.all
      render 'index'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "編集完了しました。"
    else
      render "edit"
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def ensure_correct_end_user
    @post = Post.find(params[:id])
    unless @post.end_user == current_end_user
      redirect_to posts_path
    end
  end
end


