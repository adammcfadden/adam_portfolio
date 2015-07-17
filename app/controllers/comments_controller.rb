class CommentsController < ApplicationController
load_and_authorize_resource

def index

end

def show

end

def new
  @post = Post.find(params[:post_id])
end

def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new(comment_params)
  if @comment.save
    flash[:notice] = "Comment Added"
    redirect_to user_path(@post.user)
  else
    render :new
  end
end

def edit

end

def update

end


def destroy

end

private
def comment_params
  params.require(:comment).permit(:body, :user_id)
end

end
