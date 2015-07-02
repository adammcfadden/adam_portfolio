class SkillsController < ApplicationController

def index
  @skills = Skill.all
end

# def show
#
# end
#
def new
  @skill = Skill.new
end

def create
  @skill = Skill.new(skill_params)
  if @skill.save
    flash[:notice] = "Skill Added"
    redirect_to root_path
  else
    render :new
  end
end

# def edit
#
# end
#
# def update
#
# end
#
# def destroy
#
# end

private def skill_params
  params.require(:skill).permit(:name, :description)
end

end
