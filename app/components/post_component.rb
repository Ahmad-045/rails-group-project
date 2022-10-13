# frozen_string_literal: true

class PostComponent < ViewComponent::Base
  def initialize(post:, current_user:)
    @post = post
    @current_user = current_user
  end

end
