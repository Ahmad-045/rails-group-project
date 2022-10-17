# frozen_string_literal: true

class CommentComponent < ViewComponent::Base
  def initialize(comment:, post:, user:)
    @comment = comment
    @post = post
    @user = user
  end

end
