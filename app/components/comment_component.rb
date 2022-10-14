# frozen_string_literal: true

class CommentComponent < ViewComponent::Base
  def initialize(comment:, post:)
    @comment = comment
    @post = post
  end

end
