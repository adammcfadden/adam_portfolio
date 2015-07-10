class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :skills
  has_many :projects


  def address_checker
    if (self.street_address && self.state && self.city && self.zip)
      true
    else
      false
    end
  end

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
