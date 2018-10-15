class CommentsController < ApplicationController
	before_action :get_item, only: [:create]

	def create
		@comment = @item.comments.new(comment_params)
		respond_to do |format|
			if  @comment.save
				format.html { redirect_to @item }
				format.js
			else
				format.json { render json: @comment.errors, status: :unprocessable_entity}
				format.js { render 'errors.js.erb' }
			end
		end
	end

	private

		def get_item
			params.each do |name, value|
				if name =~ /(.+)_id$/
					@item = $1.classify.constantize.find(params[name.to_sym])
				end
			end
		end

		def comment_params
			params.require(:comment).permit(:author, :content)
		end
end
