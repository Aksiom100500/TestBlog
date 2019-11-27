class CommentsChannel < ApplicationCable::Channel
  before_subscribe :get_item, only: [:subscribed]

  def subscribed
    stream_from 'comments_channel'
  end

  def unfollow
    stop_all_streams
  end

  def get_item
    params.each do |name, _value|
      if name =~ /(.+)_id$/
        @item = Regexp.last_match(1).classify.constantize.find(params[name.to_sym])
      end
    end
  end
end
