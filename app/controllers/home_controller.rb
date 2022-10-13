class HomeController < ApplicationController
  def index
    @all_groups = Group.all
    @my_groups = current_user.groups
  end
end
