class Public::FavoritesController < ApplicationController
  before_action :authenticate_end_user!

  def create
    @post = Post.find(params[:post_id])
    favorite = @post.favorites.new(end_user_id: current_end_user.id)
    favorite.save
    # app/views/favorites/create.js.erbを参照する
  end

  def destroy
    @post = Post.find(params[:post_id])
    favorite = @post.favorites.find_by(end_user_id: current_end_user.id)
    favorite.destroy
    # app/views/favorites/destroy.js.erbを参照する
  end

end
