class PostsController <  ApplicationController

  before_action :set_user, :set_group, only: [:create]

  def show
    @post = Post.find_by id: params[:id], group_id: params[:group_id]
    if @post
      authorize @post
      @post_comment = @post.comments.order(created_at: :desc)
    else
      redirect_to request.referer || root_path, alert: 'Resource Not Found'
    end
  end

  def update
    post = Post.find_by(id: params[:id])
    post.update set_post_params
  end

  def create
    @group = Group.find(params[:group_id])
    @post = @group.posts.create set_post_params
    @post.user = current_user

    if @post.save
      # PostLifeJob.set(wait: 1.minute).perform_later(@post)
      redirect_to request.referer || root_path, notice: 'Successfully created the new posts'
    else
      redirect_to request.referer || root_path, alert: 'Erroorrr While creating the posts (check the fields)'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id], group_id: params[:group_id])
    authorize @post
    if @post.destroy
      redirect_to request.referer || root_path, notice: 'Post Deleted Sucessfully'
    else
      redirect_to request.referer || root_path, alert: 'Error Deleting the Post'
    end
  end

  private
  def set_post_params
    params.require(:post).permit(:title, :content)
  end

  def set_user
    @user = User.find_by(id: current_user.id)
  end

  def set_group
    @group = Group.find_by(id: params[:group_id])
  end

end
