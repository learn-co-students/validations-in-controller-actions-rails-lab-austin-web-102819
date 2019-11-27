class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    # Update the current post object with the post_params
    @post.update(post_params)
    # If the post is valid, 
    if @post.valid?
      #Update this specific Post object with post_params
      @post.update(post_params)
      # Redirect to the @post show page. 
      redirect_to @post
    else
      # Render the Edit from again
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
