class Memory < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :stamps
  mount_uploader :photo, PhotoUploader

  validates :memory_type, presence: true
  validates :title, presence: true
end
