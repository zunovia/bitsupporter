class Admin::PostCommentsController < ApplicationController

  def destroy
    @comment = PostComment.find(params[:id])
    @comment.destroy
  end

end
