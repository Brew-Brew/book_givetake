class NoticesController < ApplicationController
 before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
      @posts = Notice.all
  end

  def show
  end

  def new
    @post = Notice.new
  end

  def create
    @post = Notice.new(post_params)
    if @post.save
      redirect_to @post #post_path(@post)
    else
      redirect_to :back
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      redirect_to :back
    end
  end

  def destroy
    if @post.destroy
      redirect_to :notices #posts_path랑 같아요
    else
      redirect_to :back
    end
  end

  private

  def find_post
    @post = Notice.find(params[:id])  
  end

  def post_params
    params.require(:notice).permit(:title, :content)
  end
end
