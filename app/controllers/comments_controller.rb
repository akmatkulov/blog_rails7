class CommentsController < ApplicationController
  
  before_action :find_post!
  
  def create
    @comment = @post.comments.build comment_params
    if @comment.save
      redirect_to post_path(@post)
    else
      @comments = @post.comments.order created_at: :desc
      render 'posts/show'
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_post!
      @post = Post.find params[:post_id]
    end

end