class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def leave_group?
    is_admin
  end

  def is_admin
    !@record.eql?@user
  end

end
