class GroupsController < ApplicationController

  def show
    @group = Group.find_by(id: params[:id])

    if @group
      authorize @group
      @group_posts = @group.posts.order(created_at: :desc)
      @group_members = @group.users
    else
      redirect_to request.referer || root_path, alert: 'Resource Not Found'
    end
  end

  def create
    group = Group.new set_group_params.merge(user_id: current_user.id)
    if group.save
      redirect_to request.referer || root_path, notice: 'Successfully created the new Group'
    else
      redirect_to request.referer || root_path, alert: 'Erro Creating the Group'
    end
  end

  private

  def set_group_params
    params.require(:group).permit(:name)
  end

end
