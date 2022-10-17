module ApplicationHelper
  def group_members?(group)
    group.users.find_by(id: current_user)
  end

  def usertest(group)
    User.find_by(id: group.user_id)&.email
  end
end
