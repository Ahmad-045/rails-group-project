class CommentsController < ApplicationController

  def create
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.new set_comment_params.merge(parent_id: params[:parent_id], user_id: current_user.id)
    respond_to do |format|
      if @comment.save
        format.turbo_stream
        # redirect_to request.referer || root_path, notice: 'Successfully Added Comment'
      else
        format.turbo_stream
        # redirect_to request.referer || root_path, alert: 'Erroorrr While creating the posts (check the fields)'
      end
    end

  end

  def destroy
    @comment = Comment.find_by(id: params[:id], post_id: params[:post_id])
    if @comment.destroy
      redirect_to request.referer || root_path, notice: 'Comment Deleted Sucessfully'
    else
      redirect_to request.referer || root_path, alert: 'Error Deleting the Comment'
    end
  end

  def update
    comment = Comment.find_by(id: params[:id])
    comment.update set_comment_params
    redirect_to request.referer || root_path, notice: 'Successfully Updated the Comment'
  end

  private
  def set_comment_params
    params.require(:comment).permit(:content);
  end

end
