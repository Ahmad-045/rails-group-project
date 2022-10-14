class GroupPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    @record.users.exists?(@user.id)
  end

  def destroy?
    @record.user_id.eql?(@user.id)
  end

  def leave_group?
    @record.user_id == @user.id
  end

end
