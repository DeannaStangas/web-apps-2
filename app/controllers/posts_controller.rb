class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    #start a new company
    @post = Post.new
    #assign user-entered form data to company's column
    @post["image"] = params["image"]
    @post["author"] = params["author"]
    @post["body"] = params["body"]
    #save company row
    @post.save
    #redirect user
    redirect_to "/posts"
  end

end
