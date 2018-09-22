# Post model
class Post < ApplicationRecord
  # Post model
  belongs_to :user
  has_many :comments, dependent: :destroy
end
