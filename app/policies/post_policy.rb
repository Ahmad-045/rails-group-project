class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    @user.groups.exists?(@record.group_id)
  end

  def destroy?
    !@record.user.id.eql?@user.id
  end

end
