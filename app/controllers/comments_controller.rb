class CommentsController < ApplicationController
	def index
		@comments = Comment.all
		respond_to do |format|
			format.html # index.html.erb
			format.rss
		end
	end
	
	 def create
	 	@post = Post.find(params[:post_id])
	 	print "In create action comments controller"
	 	@comment = @post.comments.create(params[:comment])
	 	# redirect_to :back, :notice => "Thanks for commenting!"
	 	respond_to do |format|
	 		format.js
	 	end
    # @comment = Comment.create!(params[:comment])
    # flash[:notice] = "Thanks for commenting!"
    # respond_to do |format|
      # format.html { redirect_to comments_path }
      # format.js
    # end
  end

  def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy
     respond_to do |format|
       # format.html { redirect_to comments_path }
       format.js
     end
   end
	
end
