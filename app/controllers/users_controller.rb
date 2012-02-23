class UsersController < ApplicationController
	respond_to :html, :js
	
	def index
		@header = "List users"
		@users = User.all
		respond_with(@users)
	end #end index action
	
	def show
		@header = "Show user id=" + params[:id]
		@user = User.find(params[:id])
	end #end show action
	
	def show_more
		@user_id = params[:id]
		respond_to do |format|
			format.js
		end
	end #end show_more action
	
	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "Successfully created new user and articles"
			redirect_to @user
		else 
			render :action => 'new'
		end
	end #end create action
	
	def edit
		@user = User.find(params[:id])
		@articles = @user.articles
		respond_with(@user)
	end #end edit action
	
	def new
		@user = User.new
		2.times {
			@user.articles.build
		}
	end #end new action
	
	def update
		@user = User.find(params[:id])
		respond_with do |format|
			format.html { render :action => 'edit' }
		end
	end
	
end
