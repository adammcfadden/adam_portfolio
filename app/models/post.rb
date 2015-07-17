class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  validates :name, presence: true
  validates :body, presence: true
end
