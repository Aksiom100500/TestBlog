# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :comentable, polymorphic: true, optional: true
  has_many :comments, as: :commentable
  validates :content, presence: true
  after_create_commit { RenderCommentJob.perform_later self }

  def author
    user.email
  end
end
