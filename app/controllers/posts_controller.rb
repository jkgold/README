class PostsController < ApplicationController
  skip_before_action :flash_attack, only: [:index, :new]


  #  class Scope < Scope
  #  def access 
  #   if user.admin? || user.moderater?
  #     scope.all
  #   elsif user.member?
  #     scope.where(:published=>true) 
  #   else user.guest?
  #     scope.none
  #     end
  # end


  def index
  	@posts = Post.all
    authorize @posts
  end

  def show
    @post = Post.find(params[:id])
    authorize @post
    # @post.user_id = current_user.id
  end

  def new
    @post = Post.new
      authorize @post
  end

  def create
    @post = current_user.posts.build(post_params)
    authorize @post
    if @post.save
      flash[:notice] = "Post was saved"
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post.  Please try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    authorize @post
  end


  def update
    @post = Post.find(params[:id])
    authorize @post
    if @post.update_attributes(params.require(:post).permit(:title, :body))
      flash[:notice] = "Post was updated."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post.  Please try again."
      render :edit
    end
  end

  protected

  def post_params
    params.require(:post).permit(:title, :body)
  end
end



