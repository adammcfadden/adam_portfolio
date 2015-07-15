class Skill < ActiveRecord::Base
  has_many :projects
  belongs_to :user
  has_many :users

  validates :name, presence: true
  validates :description, presence: true

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
