class GroupsController < ApplicationController

  def show
    @group = Group.find_by(id: params[:id])
    @group_posts = @group.posts.order(created_at: :desc)
  end
end
