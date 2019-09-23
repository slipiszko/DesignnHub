class Question < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user

  validates :content, presence: true
end
