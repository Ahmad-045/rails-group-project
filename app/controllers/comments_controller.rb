class CommentsController < ApplicationController

  before_action :set_post

  def index

  end

  def create
    @comment = @post.comments.new set_comment_params
    if @comment.save
      redirect_to request.referer || root_path, notice: 'Successfully Added Comment'
    else
      redirect_to request.referer || root_path, alert: 'Erroorrr While creating the posts (check the fields)'
    end
  end

  private
  def set_comment_params
    params.require(:comment).permit(:content);
  end

  def set_post
    @post = Post.find_by(id: params[:post_id])
  end

end
