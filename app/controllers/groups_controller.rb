class GroupsController < ApplicationController

  def show
    @group = Group.find_by(id: params[:id])
  end
end
