class PostsController < ApplicationController

	def create
	  post = Post.new
	  post.title = params[:title]
	  post.description = params[:description]
	  post.save
	end
	
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end
end