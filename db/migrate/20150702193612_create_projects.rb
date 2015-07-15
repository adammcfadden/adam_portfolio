class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :github_url, :string
      t.column :live_url, :string
      t.column :skill_id, :int

      t.timestamps
    end
  end
end
