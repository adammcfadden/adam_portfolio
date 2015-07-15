class AddSkillIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :skill_id, :integer
  end
end
