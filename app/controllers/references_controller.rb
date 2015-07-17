class ReferencesController < ApplicationController
load_and_authorize_resource

def index
  @user = User.find(params[:user_id])
  respond_to do |format|
    format.html { :back }
    format.js
  end
end

def show

end

def new

end

def create
  if @reference.save
    flash[:notice] = @reference.name + " Added"
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
def reference_params
  params.require(:reference).permit(:name, :user_id)
end

end
