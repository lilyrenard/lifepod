class Memory < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_and_belongs_to_many :stamps

  validates :memory_type, presence: true
  validates :title, presence: true
end
