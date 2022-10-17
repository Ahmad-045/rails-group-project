# frozen_string_literal: true

class PostComponent < ViewComponent::Base
  def initialize(post:, current_user:, group:)
    @post = post
    @current_user = current_user
    @group = group
  end

end
