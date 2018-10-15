# Video model
class Video < ApplicationRecord
  # Video model
  belongs_to :user
  has_many :replies, dependent: :destroy
  has_one :ticket, dependent: :destroy
end
