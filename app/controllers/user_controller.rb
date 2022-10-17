class UserController <  ApplicationController

  before_action :set_user, :set_group, only: [:join_group]

  def join_group
    if already_member
      redirect_to request.referer || root_path, alert: 'Cannot Join.., Already Member'
    else
      @user.groups << @group
      redirect_to request.referer || root_path, notice: 'Successfully Added to the Group'
    end
  end


  def leave_group
    group = Group.find_by(id: params[:id])
    authorize group

    user = User.find_by(id: params[:user_id])
    authorize user

    group_exists = user.groups.find_by(id: params[:id])

    if user.groups.delete(group_exists)
      redirect_to request.referer || root_path, alert: 'Successfully.., REMOVED from the Group'
    else
      redirect_to request.referer || root_path, notice: 'Errorrr!!!!'
    end
  end

  def exit_group
    group = Group.find_by(id: params[:id])
    group_exists = current_user.groups.find_by(id: params[:id])

    if current_user.groups.delete(group_exists)
      redirect_to request.referer || root_path, alert: 'Successfully.., REMOVED from the Group'
    else
      redirect_to request.referer || root_path, notice: 'Errorrr!!!!'
    end
  end

  private

  def set_user
    @user = User.find_by(id: current_user.id)
  end

  def set_group
    @group = Group.find_by(id: params[:id])
  end

  def already_member
    @user.groups.exists?(id: params[:id])
  end

end
