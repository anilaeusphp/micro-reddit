class Post < ApplicationRecord
  belongs_to :author
  has_many :posts
  validates :title, :body, presence: true
end
