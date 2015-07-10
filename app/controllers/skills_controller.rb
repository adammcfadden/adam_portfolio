class SkillsController < ApplicationController
load_and_authorize_resource
def index
  @skills = Skill.all
end

def show
  @skill = Skill.find(params[:id])
end

def new
  @skill = Skill.new
  @skills = Skill.all
end

def create
  @skill = current_user.skills.new(skill_params)
  if @skill.save
    @skill.users.push(current_user)
    flash[:notice] = "Skill Added"
    redirect_to skill_path(@skill)
  else
    render :new
  end
end

def edit
  @skill = Skill.find(params[:id])
end

def update
  @skill = Skill.find(params[:id])
  if @skill.update(skill_params)
    flash[:notice] = "Skill Updated"
    redirect_to skill_path(@skill)
  else
    render :edit
  end
end

def destroy
  @skill = Skill.find(params[:id])
  @skill.destroy
  flash[:notice] = @skill.name + " Deleted"
  redirect_to root_path
end

private def skill_params
  params.require(:skill).permit(:name, :description)
end

end
