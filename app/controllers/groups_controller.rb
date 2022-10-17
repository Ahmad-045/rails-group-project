class GroupsController < ApplicationController

  before_action :set_group, except: [:create]


  def index
    @all_groups = Group.all
  end

  def show
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

  def update
    @group.update set_group_params
    redirect_to request.referer || root_path, notice: 'Successfully Updated the Group'
  end

  def destroy
    authorize @group

    if @group.destroy
      redirect_to request.referer || root_path, notice: 'Successfully deleted the Group'
    else
      redirect_to request.referer || root_path, alert: 'Error deleting the Group'
    end
  end

  def created_by_me
    @created_by_me = Group.where('user_id = ?', current_user.id)
  end


  private

  def set_group_params
    params.require(:group).permit(:name)
  end

  def set_group
    @group = Group.find_by(id: params[:id])
  end

end
