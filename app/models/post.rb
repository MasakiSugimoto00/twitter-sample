class Post < ApplicationRecord
  belongs_to :user

  attr_accessor :img_url
end
