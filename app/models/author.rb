class Author < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true, length: {minimum: 4, maximum: 12}
  validates :password, length: {minimum: 6, maximum: 16}
  validates :email, uniqueness: true

  has_many :comments
  has_many :posts
end
