module ApplicationHelper
  def group_members?(group)
    group.users.find_by(id: current_user)
  end
end
