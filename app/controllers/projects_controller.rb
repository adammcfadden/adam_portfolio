class ProjectsController < ApplicationController
load_and_authorize_resource
def show
  @project = Project.find(params[:id])
end

def new
  @projects = Project.all
  @project = Project.new
  @skill_option_array = []
  Skill.all.each do |skill|
    @skill_option_array.push([skill.name, skill.id])
  end
end

def create
  @project = current_user.projects.new(project_params)
  if @project.save
    @skill = (Skill.find(params[:project][:skill_id]))
    @skill.projects.push(@project)
    flash[:notice] = @project.name + " Added"
    redirect_to project_path(@project)
  else
    render :new
  end
end

def edit
  @project = Project.find(params[:id])
  @skill_option_array = []
  Skill.all.each do |skill|
    @skill_option_array.push([skill.name, skill.id])
  end
end

def update
  @project = Project.find(params[:id])
  if @project.update(project_params)
    @skill = (Skill.find(params[:project][:skill_id]))
    @skill.projects.push(@project)
    flash[:notice] = @project.name + " Updated"
    redirect_to project_path(@project)
  else
    render :edit
  end
end

def destroy
  @project = Project.find(params[:id])
  @skill = @project.skill
  @project.destroy
  flash[:notice] = @project.name + " Deleted"
  if @skill != nil
    redirect_to skill_path(@skill)
  else
    redirect_to root_path
  end
end

private
def project_params
  params.require(:project).permit(:name, :description, :github_url, :live_url, :skill_id)
end

end
