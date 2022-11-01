class PostLifeJob < ApplicationJob
  queue_as :default

  def perform(post)
    post.destroy
  end
end
