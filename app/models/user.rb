# User model class
class User < ApplicationRecord
  # User model class
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :videos, dependent: :destroy
  has_many :replies, dependent: :destroy
end
