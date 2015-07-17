class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  validates :name, presence: true
  validates :body, presence: true

  default_scope { order(created_at: :desc) }
end
