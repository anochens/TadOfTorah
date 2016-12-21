class CommentsController < ApplicationController
	def create
#       raise JSON::dump(post_params)
		@post = Post.find(post_params[:post_id])
		@comment = @post.comments.create!(post_params[:comment])
		redirect_to @post, :notice => "Comment (#{@comment.id}) created"
                                              

	end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.permit(:post_id, :comment=>[:name,:content])

    end  
end
