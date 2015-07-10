class Project < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :github_url, presence: true
  validates :live_url, presence: true
  validates :skill_id, presence: true

end
