class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {in: 1..150}
  validates :body, presence: true

  has_many :comments
  belongs_to :user
end
