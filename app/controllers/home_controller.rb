class HomeController < ApplicationController
  def index
    @all_groups = Group.all
    @my_groups = current_user.groups
    @created_by_me = Group.where('user_id = ?', current_user.id)
  end
end
