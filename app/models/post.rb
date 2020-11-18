class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  attr_accessor :img_url
end
