class PostsController <  ApplicationController

  before_action :set_user, :set_group, only: [:create]

  def create
    @post = Post.new set_post_params
    @user.posts << @post
    @group.posts << @post

    if @post.save
      redirect_to request.referer || root_path, notice: 'Successfully Added to the Group'
    else
      redirect_to request.referer || root_path, alert: 'Erroorrr While Saving the Password'
    end

  end

  private
  def set_post_params
    params.require(:posts).permit(:title, :content)
  end

  def set_user
    @user = User.find_by(id: current_user.id)
  end

  def set_group
    @group = Group.find_by(id: params[:id])
  end

end
