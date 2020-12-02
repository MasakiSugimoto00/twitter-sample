class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :content, presence: true, length: { in: 1..140 }
end
