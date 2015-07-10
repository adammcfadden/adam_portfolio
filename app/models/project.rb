class Project < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  validates :github_url, presence: true
  validates :live_url, presence: true
  validates :skill_id, presence: true

  def summarize
    words = description.split(' ')
    summary = []
    if description.length < 100
      description
    else
      index = 0
      until summary.join(' ').length > 100
        summary.push(words[index])
        index += 1
      end
    summary.join(' ') + ' ...'
    end
  end

end
