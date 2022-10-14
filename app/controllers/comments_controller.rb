class CommentsController < ApplicationController

  def index

  end

  def new
    # @post = Post.find(params[:post_id])
    # @comment = @post.comments.new(parent_id: params[:parent_id])
  end

  def create
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.new set_comment_params.merge(parent_id: params[:parent_id])
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

end
