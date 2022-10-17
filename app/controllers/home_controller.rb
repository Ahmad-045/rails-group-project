class HomeController < ApplicationController
  def index
    @my_groups = current_user.groups
  end
end
