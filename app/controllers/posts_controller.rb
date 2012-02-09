class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	
    @post = Post.new

    respond_to do |format|
      format.html
    end
  end
  
  def show
  	@post = Post.find(params[:id])
  	
  end
  
  def edit
  	@post = Post.find(params[:id])
  end

  def create
  	@post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(posts_url,
                    :notice => 'Post was successfully created.') }
        format.js
      else
        format.html { redirect_to(posts_url) }
      end
    end
  end
  
  def update
  	@post = Post.find(params[:id])
  	
  	respond_to do |format|
  		if @post.update_attributes(params[:post])
  			format.html { redirect_to(@post, :notice => "Post was updated.") }
  		else
  			format.html { render :action => 'edit' }
  		end
  	end
  end

  def destroy
  	@post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.js
    end
  end

end
