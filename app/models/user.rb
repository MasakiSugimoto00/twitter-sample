class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true, length: { in: 1..15 }
  validates :email, presence: true, length: { maximum: 100 }
  validates :desc, presence: true, length: { in: 1..140 }

  has_many :posts
  has_many :likes
end
