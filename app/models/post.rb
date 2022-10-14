class Post < ApplicationRecord
  validates_presence_of :title, :content

  belongs_to :user
  belongs_to :group

  has_many :comments, dependent: :destroy
end
