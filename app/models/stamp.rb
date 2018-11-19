class Stamp < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :memories

  validates :title, presence: true
  # validates :stamp_image, presence:true
end
