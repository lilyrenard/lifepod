class Memory < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_and_belongs_to_many :stamps

  validates :memory_type, presence: true
  validates :title, presence: true
  validate :has_one_stamp_at_least

  def has_one_stamp_at_least
    if stamps.empty?
      errors.add(:stamps, "You forgot to stamp your memory!")
    end
  end
end
