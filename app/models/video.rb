# Video model
class Video < ApplicationRecord
  # Video model
  belongs_to :user
  has_many :replies, dependent: :destroy
end
