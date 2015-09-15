class CommentsController < ApplicationController

  def create
    @comment = Comment.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    authorize @comment
    
    if @comment.save
      flash[:notice] ="Comment was saved"
      redirect_to [@post.topic, @post]
    else
      flash[:error] = "Error creating Comment.  Please try again."
      render :new
    end

    def new
      @comment = Comment.new(params[:post])

    end
  end
end
  
  private 

  def comment_params
    params.require(:comment).permit(:body)
  end
 
