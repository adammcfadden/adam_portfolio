class AddAssociationsBetweenUsersSkillsProjects < ActiveRecord::Migration
  def change
    add_column :projects, :user_id, :integer
    add_column :skills, :user_id, :integer
  end
end
