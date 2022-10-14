# frozen_string_literal: true

class GroupComponent < ViewComponent::Base
  def initialize(group:, user:)
    @group = group
    @user = user
  end

end
