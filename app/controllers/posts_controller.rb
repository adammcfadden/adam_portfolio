class PostsController < ApplicationController
load_and_authorize_resource

def index

end

def show

end

def new

end

def create
  if @post.save
    flash[:notice] = @post.name + " Added"
    redirect_to user_path(current_user)
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
def post_params
  params.require(:post).permit(:name, :body, :user_id)
end

end
