class Admin::PostsController < ApplicationController
  before_action :authenticate_admin!

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new

  end

  def index
    @posts = Post.all
    #@end_user = EndUser.find_by(params[post_id])
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end


end
