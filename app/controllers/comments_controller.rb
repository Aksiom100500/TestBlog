# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :get_item, only: [:create]

  def create
    @comment = @item.comments.new comment_params
    @comment.user_id = current_user.id
    @comment.save
    # if @comment.save
    #   ActionCable.server.broadcast('comments_channel',
    #     comment: @comment.content,
    #     author: @comment.author
    #   )
    head :ok
    # end
  end

  private

  def get_item
    params.each do |name, _value|
      if name =~ /(.+)_id$/
        @item = Regexp.last_match(1).classify.constantize.find(params[name.to_sym])
      end
    end
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
